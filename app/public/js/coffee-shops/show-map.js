document.addEventListener('DOMContentLoaded', function () {
    const data = JSON.parse(document.getElementById('data').getAttribute('json'));
    let map = L.map('map', {
        attributionControl: false,
    }).setView([38.72, -9.14], 13);
    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
    }).addTo(map);
    const lat = data.location.coordinates[0];
    const lon = data.location.coordinates[1];
    L.marker([lon, lat]).addTo(map)
        .bindPopup(data.name
            + '<br/><span class="badge rounded-pill text-bg-dark">'+data.rating+' ('+data.num_reviews+')</span>'
        )
        .openPopup();
    map.setView([lon, lat], 16);
});