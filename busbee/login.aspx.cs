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

      protected void btnSignIn_Click(object sender, EventArgs e)
{
    // Retrieve user input
    string User_Username = txtUsername.Text;
    string User_Password = txtPassword.Text;

    // Validate reCAPTCHA response
    string reCaptchaResponse = Request.Form["g-recaptcha-response"];
    bool isCaptchaValid = ValidateReCaptcha(reCaptchaResponse);

    if (!isCaptchaValid)
    {
        string Message = "Please complete the reCAPTCHA verification!";
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Message + "');", true);
        return;
    }

    // Proceed with database authentication
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BusbeeConnection"].ConnectionString);

    try
    {
        conn.Open();
        string qry = "SELECT * FROM Commuter WHERE Commuter_Username='" + User_Username + "' and Commuter_Password='" + User_Password + "'";
        SqlCommand cmd = new SqlCommand(qry, conn);
        SqlDataReader sdr = cmd.ExecuteReader();

        if (sdr.Read())
        {
            string Message = "Login successful!";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Message + "');", true);
            Response.Redirect("dashboard.aspx");
        }
        else
        {
            string Message = "Login unsuccessful!";
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Message + "');", true);
        }

        conn.Close();
    }
    catch (Exception ex)
    {
        Response.Write(ex.Message);
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