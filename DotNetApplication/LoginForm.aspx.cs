using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DotNetApplication
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            int i = BusinessLogic.login(txt_username.Text, txt_password.Text);
            if( i == 1 )
            {
                Session["Username"] = txt_username.Text;
                Response.Redirect("~/DashBoard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password');</script>");
            }
        }
    }
}