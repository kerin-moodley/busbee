﻿using System;
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
            if (String.IsNullOrEmpty(Recaptchalogin.Response))
            {
                txtUsername.Text = "";
                txtPassword.Text = "";
                string Message = "Please complete the reCAPTCHA verification!";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Message + "');", true);
                return;
            }
            else
            {
                var result = Recaptchalogin.Verify();
                if (result.Success)
                {
                    try
                    {

                        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["BusbeeConnection"].ConnectionString;

                        SqlConnection con = new SqlConnection(cs);


                        SqlCommand cmd = new SqlCommand("SELECT Commuter_ID from Commuter where Commuter_Username= @Username AND Commuter_Password= @Password", con);
                        cmd.Parameters.AddWithValue("@Username", this.txtUsername.Text);
                        cmd.Parameters.AddWithValue("@Password", this.txtPassword.Text);

                        con.Open();

                        object response = cmd.ExecuteScalar();

                        if (response != null)
                        {
                            // User found, login successful
                            Session["Username"] = this.txtUsername.Text; // Store the username in a session for later use
                            txtUsername.Text = "";
                            txtPassword.Text = "";
                            Response.Redirect("dashboard.aspx"); // Redirect to the home page
                        }
                        else
                        {
                            // User not found, login unsuccessful
                            txtUsername.Text = "";
                            txtPassword.Text = "";
                            string Message = "Invalid username or password!";
                            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Message + "');", true);
                        }

                        con.Close();
                    }
                    catch (Exception ex)
                    {
                        txtUsername.Text = "";
                        txtPassword.Text = "";
                        Response.Write("Error: " + ex.ToString());
                    }
                }
                else
                {
                    string errormessage = "Error";
                    foreach (var err in result.ErrorCodes)
                    {
                        txtUsername.Text = "";
                        txtPassword.Text = "";
                        Response.Write(errormessage);
                    }
                }
            }



        }

    }
}

