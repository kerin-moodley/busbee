document.addEventListener("DOMContentLoaded", function () {
    const busSelect = document.getElementById("busSelect");
    const busTablesContainer = document.getElementById("busTables");

    function showTable(tableToShow) {
        const busTables = document.querySelectorAll(".bus-tables");
        busTables.forEach(table => table.style.display = "none");

        tableToShow.style.display = "block";
    }

    busSelect.addEventListener("change", function () {
        const selectedBus = this.value;
        switch (selectedBus) {
            case "1":
                showTable(document.getElementById("bus1Table"));
                break;
            case "2":
                showTable(document.getElementById("bus2Table"));
                break;
            case "3":
                showTable(document.getElementById("bus3Table"));
                break;
            case "4":
                showTable(document.getElementById("bus4Table"));
                break;
            default:
                busTablesContainer.style.display = "none";
                break;
        }
    });
});


// Get references to the bus select element and the bus tables container
const busSelect = document.getElementById('busSelect');
const busTablesContainer = document.getElementById('busTables');

// Show the bus tables when a bus is selected
busSelect.addEventListener('change', function () {
    // Get the value of the selected bus
    const selectedBus = parseInt(busSelect.value);

    // Hide all bus tables by default
    document.querySelectorAll('.bus-tables').forEach(table => {
        table.style.display = 'none';
    });

    // Show the corresponding bus table if a valid bus is selected
    if (selectedBus > 0) {
        const selectedBusTable = document.getElementById(`bus${selectedBus}Table`);
        if (selectedBusTable) {
            selectedBusTable.style.display = 'block';
            busTablesContainer.style.display = 'block'; // Show the bus tables container
        }
    } else {
        busTablesContainer.style.display = 'none'; // Hide the bus tables container if no bus is selected
    }
});


