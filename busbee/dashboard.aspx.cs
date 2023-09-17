using System;

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
        }
    }
}