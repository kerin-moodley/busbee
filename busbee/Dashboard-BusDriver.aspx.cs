using MailKit.Net.Smtp;
using MimeKit;
using System;
namespace busbee
{
    public partial class Dashboard_BusDriver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSend_Click(object sender, EventArgs e)
        {
            string useremail = txtEmail.Text;
            string subject = txtSubject.Text;
            string message = txtMessage.Text;

            var email = new MimeMessage();
            email.From.Add(new MailboxAddress("Sender Name", useremail));
            email.To.Add(new MailboxAddress("Receiver Name", "knmoodley1215@gmail.com"));
            email.Subject = subject;
            email.Body = new TextPart(MimeKit.Text.TextFormat.Plain) { Text = message };

            using (var smtp = new SmtpClient())
            {
                smtp.Connect("smtp.gmail.com", 587, false);
                // Note: only needed if the SMTP server requires authentication
                smtp.Authenticate("knmoodley1215@gmail.com", "gexmnyyzzngxerfz");
                smtp.Send(email);
                smtp.Disconnect(true);
            }

            txtEmail.Text = "";
            txtSubject.Text = "";
            txtMessage.Text = "";


        }
    }
}