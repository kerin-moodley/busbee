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
            try
            {

                string cs = System.Configuration.ConfigurationManager.ConnectionStrings["BusbeeConnection"].ConnectionString;

                SqlConnection con = new SqlConnection(cs);


                SqlCommand cmd = new SqlCommand("SELECT Commuter_ID from Commuter where Commuter_Username= @Username AND Commuter_Password= @Password", con);
                cmd.Parameters.AddWithValue("@Username", this.txtUsername.Text);
                cmd.Parameters.AddWithValue("@Password", this.txtPassword.Text);

                con.Open();

                cmd.ExecuteNonQuery();

                string Message = "Login successful!";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Message + "');", true);

                txtUsername.Text = "";
                txtPassword.Text = "";

                con.Close();

                Response.Redirect("dashboard.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}