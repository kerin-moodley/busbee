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

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            try
            {

                string cs = System.Configuration.ConfigurationManager.ConnectionStrings["BusbeeConnection"].ConnectionString;

                SqlConnection con = new SqlConnection(cs);

                string User_FirstName = txtFirstName.Text;
                string User_LastName = txtLastName.Text;
                string User_Email = txtEmail.Text;
                string User_Phone = txtPhoneNumber.Text;
                string User_IDNum = txtIDNum.Text;
                string User_Username = txtUsername.Text;
                string User_Password = txtConfirmPassword.Text;
                int Wallet = 0;
                string User_ID = User_FirstName.Substring(0, 2) + User_LastName.Substring(0, 2) + User_IDNum.Substring(0, 1);


                SqlCommand cmd = new SqlCommand("INSERT INTO Commuter (Commuter_ID, Commuter_FirstName, Commuter_LastName, Commuter_Email, Commuter_Phone, Commuter_IDPassport, Commuter_Username, Commuter_Password, Wallet) VALUES('" + User_ID + "','" + User_FirstName + "','" + User_LastName + "','" + User_Email + "','" + User_Phone + "','" + User_IDNum + "','" + User_Username + "','" + User_Password + "','" + Wallet + "')", con);

                con.Open();

                cmd.ExecuteNonQuery();

                string Message = "Commuter registeration successful!";
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + Message + "');", true);

                txtFirstName.Text = "";
                txtLastName.Text = "";
                txtEmail.Text = "";
                txtPhoneNumber.Text = "";
                txtIDNum.Text = "";
                txtUsername.Text = "";
                txtConfirmPassword.Text = "";

                con.Close();

                Response.Redirect("login.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}
