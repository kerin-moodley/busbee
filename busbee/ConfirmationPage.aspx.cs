using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace busbee
{
    public partial class ConfirmationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the query parameter exists
                if (Request.QueryString["price"] != null)
                {
                    // Get the value of the query parameter
                    string selectedPrice = Server.UrlDecode(Request.QueryString["price"]);

                    // Display the selected price on the confirmation page
                    lblConfirmation.Text = "Confirm price chosen: " + selectedPrice;
                }
            }

        }
    }
}