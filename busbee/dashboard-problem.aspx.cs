using System;
using System.Web.UI;
using MailKit.Net.Smtp;
using MimeKit;

namespace busbee
{
    public partial class reportproblem : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string useremail = txtemail.Text;
            string subject = txtsubject.Text;
            string message = txtdescription.Text;

            var email = new MimeMessage();
            email.From.Add(new MailboxAddress(name, useremail));
            email.To.Add(new MailboxAddress("BusBee", "busbeeservices@gmail.com"));
            email.Subject = subject;
            email.Body = new TextPart(MimeKit.Text.TextFormat.Plain) { Text = message };

            using (var smtp = new SmtpClient())
            {
                smtp.Connect("smtp.gmail.com", 587, false);
                // Note: only needed if the SMTP server requires authentication
                smtp.Authenticate("busbeeservices@gmail.com", "kdbl wpii hqjq kxds");
                smtp.Send(email);
                smtp.Disconnect(true);              
            }

            txtemail.Text = "";
            txtsubject.Text = "";
            txtdescription.Text = "";
        }
    }
}

