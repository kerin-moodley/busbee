using System;
using System.Data.SqlClient;
using System.Configuration;

namespace busbee
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResetPassword_Click(object sender, EventArgs e)
        {
            string userEmail = txtEmail.Text; // Get the user's email from the input field

            // Check if the email exists in the database
            string cs = ConfigurationManager.ConnectionStrings["BusbeeConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();
                string qry = "SELECT Commuter_Username FROM Commuter WHERE Commuter_Email = @UserEmail";
                SqlCommand cmd = new SqlCommand(qry, con);
                cmd.Parameters.AddWithValue("@UserEmail", userEmail);
                object result = cmd.ExecuteScalar();

                if (result != null) // User with the provided email found
                {
                    // Generate and send a password reset link to the user's email
                    // Implement your email sending logic here

                    string resetMessage = "A password reset link has been sent to your email address.";
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + resetMessage + "');", true);
                }
                else // User with the provided email not found
                {
                    string errorMessage = "The provided email address does not exist in our records.";
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + errorMessage + "');", true);
                }
            }
        }
    }
}