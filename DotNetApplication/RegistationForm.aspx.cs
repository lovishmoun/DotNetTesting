using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetApplication
{
    public partial class RegistationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void refresh()
        {
            txt_fname.Text = "";
            txt_lname.Text = "";
            txt_number.Text = "";
            txt_password.Text = "";
            txt_cpassword.Text = "";
            txt_email.Text = "";
            txt_dob.Text = "";
            txt_cname.Text = "";
            ddl_state.ClearSelection();
        }
        protected void btn_submit_Click(object sender, EventArgs e)
        {
            int i = BusinessLogic.add_Record(txt_fname.Text, txt_lname.Text,txt_password.Text, txt_email.Text,txt_number.Text, txt_dob.Text, txt_cname.Text, ddl_state.SelectedItem.Text);
            if( i == 1 )
            {
                refresh();
                Response.Write("<script>alert('Record Saved Successfully');</script>");
                Response.Redirect("~/LoginForm.aspx");
            }
            else
            {
                Response.Write("<script>alert('Record Insertion failed');</script>");
            }
        }
    }
}