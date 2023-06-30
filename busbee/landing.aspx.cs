using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace busbee
{
    public partial class landing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUserSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }
    }
}