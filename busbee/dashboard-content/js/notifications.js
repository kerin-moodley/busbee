const confirmButton = document.getElementById('confirm-button');
const notificationCheckbox = document.getElementById('notification-checkbox');

confirmButton.addEventListener('click', () => {
    const selectedBus = document.getElementById('bus-select').value;
    const selectedTime = document.getElementById('time-input').value;
    const receiveNotifications = notificationCheckbox.checked;

    const selectedTimeParts = selectedTime.split(':');
    const selectedHour = parseInt(selectedTimeParts[0]);

    if (selectedHour < 4 || selectedHour > 19) {
        const resultDiv = document.getElementById('result');
        resultDiv.textContent = "Error: Bus is unavailable at this time. Please choose a time between 04:00 AM and 07:00 PM.";
        return;
    }

    // Calculate estimated time of arrival
    const estimatedArrivalTime = new Date(`2023-08-26T${selectedTime}:00`);
    estimatedArrivalTime.setMinutes(estimatedArrivalTime.getMinutes() + 30);

    let resultMessage = `Bus ${selectedBus} is on its way.`;
    if (receiveNotifications) {
        const notificationTime = new Date(estimatedArrivalTime);
        notificationTime.setMinutes(notificationTime.getMinutes() - 10);
        resultMessage += ` You will receive a notification at ${notificationTime.toLocaleTimeString()}.`;

        // Show notification popup
        alert(`You will receive a notification when the bus is 10 minutes away.`);
    }

    const resultDiv = document.getElementById('result');
    resultDiv.textContent = resultMessage;
});