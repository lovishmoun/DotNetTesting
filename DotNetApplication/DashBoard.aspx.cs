using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetApplication
{
    public partial class DashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                call_dashboard();
                Label1.Text = Session["Username"].ToString();

            }
        }
        public void call_dashboard()
        {
            DataSet ds = new DataSet();
            ds = BusinessLogic.dashboard();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView1.DataSource = ds;
                GridView1.DataBind();
                int colummcount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = colummcount;
                GridView1.Rows[0].Cells[0].Text = "No Record Found";
            }

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["id"].ToString());
            int result = BusinessLogic.del_Record(id);
            if (result == 1)
            {
                call_dashboard();
                lblresult.ForeColor = Color.Green;
                lblresult.Text = id + "Record Successfully deleted";

            }
            else
            {
                call_dashboard();
                lblresult.ForeColor = Color.Red;
                lblresult.Text = id + "Record Not deleted";

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            call_dashboard();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            TextBox txt_fname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_fname");
            TextBox txt_lname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_lname");
            TextBox txt_email = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_email");
            TextBox txt_number = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_number");
            TextBox txt_dob = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_dob");
            TextBox txt_cname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_cname");
            TextBox txt_state = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txt_state");
            int result = BusinessLogic.update_Record(txt_fname.Text, txt_lname.Text, txt_email.Text, txt_number.Text, txt_dob.Text, txt_cname.Text, txt_state.Text, id);
            if (result == 1)
            {
                GridView1.EditIndex = -1;
                call_dashboard();
                lblresult.ForeColor = Color.Green;
                lblresult.Text = txt_fname.Text + "Record Successfully Updated";
            }
            else
            {
                GridView1.EditIndex = -1;
                call_dashboard();
                lblresult.ForeColor = Color.Red;
                lblresult.Text = txt_fname.Text + "Record not Updated";
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            call_dashboard();
        }
    }
}