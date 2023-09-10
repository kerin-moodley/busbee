const button = document.getElementById("locationButton");
const label = document.getElementById("locationLabel");
const navigateButton = document.getElementById("navigateButton");
const stopAutoUpdateButton = document.getElementById("stopAutoUpdate");
let intervalId;

button.addEventListener("click", () => {
    if (navigator.geolocation) { //if browser supports geolocation API
        button.disabled = true; // Disable the button while fetching location
        label.textContent = "Detecting your location...";
        // geolocation.getCurrentPosition method is used to get the current position of the device
        // it takes three parameters: success, error, options. We don't need the third parameter for this project
        navigator.geolocation.getCurrentPosition(onSuccess, onError);
    } else {
        label.textContent = "Your browser does not support geolocation";
    }
});

function onSuccess(position) {
    let { latitude, longitude } = position.coords;

    fetch(`https://api.opencagedata.com/geocode/v1/json?q=${latitude}+${longitude}&key=3f8d83eeff5d44bd89dd4fe7ed45386e`)
        .then(response => response.json())
        .then(response => {
            let allDetails = response.results[0].components;
            console.table(allDetails);
            let { city, suburb, road, country } = allDetails;
            label.textContent = `${road}, ${suburb}, ${city}, ${country}`;
            // Show the navigation button after getting the location
            navigateButton.style.display = "inline";
            navigateButton.addEventListener("click", () => {
                // Navigate to another page and pass the information as a query parameter
                const locationInfo = `${road}, ${suburb}, ${city}, ${country}`;
                const url = `BusNotification.aspx?location=${encodeURIComponent(locationInfo)}`;
                // Navigate to the new page
                window.location.href = url;
            });
        })
        .catch(() => {
            label.textContent = "Something went wrong";
        })
        .finally(() => {
            button.disabled = false; // Re-enable the button after fetching location
        });
}
function onError(error) {
    if (error.code == 1) { //if user denied the request
        label.textContent = "You denied the request";
    } else if (error.code == 2) { //if location is not available
        label.textContent = "Location is unavailable";
    } else { //if other error occurred
        label.textContent = "Something went wrong";
    }
    button.disabled = true; // Disable the button if an error occurred
}
// Start automatic updates every 30 seconds
intervalId = setInterval(() => {
    button.click(); // Simulate a click on the locationButton
}, 30000);

// Stop automatic updates when the "Stop Automatic Update" button is clicked
stopAutoUpdateButton.addEventListener("click", () => {
    clearInterval(intervalId);
});