using System;
using System.Web.UI.WebControls;

namespace busbee
{
    public partial class notifications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Perform initialization only when the page is first loaded (not on postbacks)

                // Populate the dropdown list with bus options
                bus_select.Items.Add(new ListItem("412", "412"));
                bus_select.Items.Add(new ListItem("413", "413"));
                bus_select.Items.Add(new ListItem("414", "414"));
                // Add more bus options here

                // Set default selected time (optional)
                time_input.Text = "04:00"; // Set to the desired default time

                // Clear the result message
                result.Text = "";
            }
        }

        protected void confirm_button_Click(object sender, EventArgs e)
        {
            string selectedBus = bus_select.SelectedValue; // Assuming bus_select is the ID of the DropDownList
            string selectedTime = time_input.SelectedValue; // Assuming time_input is the ID of the TextBox
            bool receiveNotifications = chkNotifications.Checked; // Assuming notification_checkbox is the ID of the CheckBox

            // Calculate estimated arrival time and send notifications (C# equivalent logic)
            var selectedTimeParts = selectedTime.Split(':');
            int selectedHour = int.Parse(selectedTimeParts[0]);

            if (selectedHour < 4 || selectedHour > 19)
            {
                result.Text = "Error: Bus is unavailable at this time. Please choose a time between 04:00 AM and 07:00 PM.";
                return;
            }

            DateTime estimatedArrivalTime = DateTime.Today.Add(TimeSpan.Parse(selectedTime)).AddMinutes(30);

            string resultMessage = $"Bus {selectedBus} is on its way.";
            if (receiveNotifications)
            {
                DateTime notificationTime = estimatedArrivalTime.AddMinutes(-10);
                resultMessage += $" You will receive a notification at {notificationTime.ToShortTimeString()}.";

                // TODO: Send SMS notification here

                // Show notification popup
                ClientScript.RegisterStartupScript(this.GetType(), "notification", "alert('You will receive a notification when the bus is 10 minutes away.');", true);
            }

            result.Text = resultMessage;
        }

    }
}