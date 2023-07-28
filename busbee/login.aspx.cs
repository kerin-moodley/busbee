using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace busbee
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Validate reCAPTCHA response
            string reCaptchaResponse = Request.Form["g-recaptcha-response"];
            bool isCaptchaValid = ValidateReCaptcha(reCaptchaResponse);

            if (!isCaptchaValid)
            {
                string Message = "Please complete the reCAPTCHA verification!";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Message + "');", true);
                return;
            }
            else
            {
                try
                {

                    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["BusbeeConnection"].ConnectionString;

                    SqlConnection con = new SqlConnection(cs);


                    SqlCommand cmd = new SqlCommand("SELECT Commuter_ID from Commuter where Commuter_Username= @Username AND Commuter_Password= @Password", con);
                    cmd.Parameters.AddWithValue("@Username", this.txtUsername.Text);
                    cmd.Parameters.AddWithValue("@Password", this.txtPassword.Text);

                      con.Open();

            object result = cmd.ExecuteScalar();

            if (result != null)
            {
                // User found, login successful
                Session["Username"] = this.txtUsername.Text; // Store the username in a session for later use
                Response.Redirect("landing.aspx"); // Redirect to the home page
            }
            else
            {
                // User not found, login unsuccessful
                string Message = "Invalid username or password!";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Message + "');", true);
            }

            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
}

        
        


        // Function to validate reCAPTCHA response
        private bool ValidateReCaptcha(string reCaptchaResponse)
        {
            string secretKey = "6Ld9AEInAAAAAIkdpQKiO7RMWtcVg3mBk55ja-DH";
            string apiUrl = "https://www.google.com/recaptcha/api/siteverify";

            using (var client = new System.Net.WebClient())
            {
                var response = client.DownloadString($"{apiUrl}?secret={secretKey}&response={reCaptchaResponse}");
                var result = Newtonsoft.Json.JsonConvert.DeserializeObject<ReCaptchaResponse>(response);
                return result.Success;
            }
        }

        // Helper class for reCAPTCHA API response
        public class ReCaptchaResponse
        {
            public bool Success { get; set; }
            public string ChallengeTs { get; set; }
            public string Hostname { get; set; }
            public string ErrorCodes { get; set; }
        }



    }
}