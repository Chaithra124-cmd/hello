const API_URL = "YOUR_API_GATEWAY_URL";

async function loadDashboard() {
    const response = await fetch(`${API_URL}/resources`);
    const data = await response.json();

    console.log(data);

    displayDashboard(data);
}