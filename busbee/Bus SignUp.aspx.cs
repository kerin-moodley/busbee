using System;
using System.Configuration;
using System.Data.SqlClient;

namespace busbee
{
    public partial class Bus_SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["BusbeeConnection"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from Commuter where Commuter_Username='" + txtUsername.Text + "'";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                int temp = 0;
                if (cmd.ExecuteScalar() is object result)
                {
                    temp = Convert.ToInt32(result.ToString());
                }

                if (temp == 1)
                {
                    Response.Write("Username Already Exists");
                }

                conn.Close();
            }
        }
}