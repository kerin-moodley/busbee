using System;
using System.Windows.Forms;

namespace busbee
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session value is assign on the label  
            if (Session["UserName"] != null)
            {
                lblusername.Text = lblusername.Text + Session["UserName"].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
                MessageBox.Show("Please login first before accessing the dashboard");
            }



        }

        protected void logoutlink_Click(object sender, EventArgs e)
        {
            Session.Remove("UserName");
            Response.Redirect("landing.aspx");
        }
    }
}