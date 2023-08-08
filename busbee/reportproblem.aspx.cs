using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System;
using System.Net.Http;
using System.Text;
using System.Web.UI;

namespace busbee
{
    public partial class reportproblem : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected async void btnsubmit_click(object sender, EventArgs e)
        {
            string apiKey = "YOUR_FREE_API_KEY"; // Replace with your actual API key
            string apiUrl = "https://api.example.com/send"; // Replace with the API endpoint

            string issueTitle = Request.Form["issueTitle"];
            string busNumber = Request.Form["busNumber"];
            string dateof = Request.Form["dateof"];
            string description = Request.Form["descrip"];
            string message = $"Issue Title: {issueTitle}\nBus Number: {busNumber}\nDate of Incident: {dateof}\nDescription: {descrip}";

            using (var httpClient = new HttpClient())
            {
                var content = new StringContent(message, Encoding.UTF8, "application/json");
                httpClient.DefaultRequestHeaders.Add("api-key", apiKey);

                var response = await httpClient.PostAsync(apiUrl, content);

                if (response.IsSuccessStatusCode)
                {
                    lblStatus.Text = "Issue reported successfully!";
                }
                else
                {
                    lblStatus.Text = "Failed to report issue. Please try again later.";
                }
            }
        }
    }
}

