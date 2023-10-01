const button = document.getElementById("locationButton");
const label = document.getElementById("locationLabel");
const stopAutoUpdateButton = document.getElementById("stopAutoUpdate");
const locationHistory = document.getElementById("locationHistory"); // New element to display location history
let intervalId;

button.addEventListener("click", () => {
    if (navigator.geolocation) {
        button.disabled = true;
        label.textContent = "Detecting your location...";
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

            // Create a new list item to display the location
            const locationInfo = `${road}, ${suburb}, ${city}, ${country}`;
            const locationItem = document.createElement("li");
            locationItem.textContent = locationInfo;

            // Append the location item to the history list
            locationHistory.appendChild(locationItem);
        })
        .catch(() => {
            label.textContent = "Something went wrong";
        })
        .finally(() => {
            button.disabled = false;
        });
}

function onError(error) {
    if (error.code == 1) {
        label.textContent = "You denied the request";
    } else if (error.code == 2) {
        label.textContent = "Location is unavailable";
    } else {
        label.textContent = "Something went wrong";
    }
    button.disabled = true;
}

intervalId = setInterval(() => {
    button.click();
}, 30000);

stopAutoUpdateButton.addEventListener("click", () => {
    clearInterval(intervalId);
});
