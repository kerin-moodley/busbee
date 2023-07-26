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
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BusbeeConnection"].ConnectionString);
            try
            {
                string User_Username = txtUsername.Text;
                string User_Password = txtPassword.Text;
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
    }
}