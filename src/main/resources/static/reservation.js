$(document).ready(function() {
    let price = document.getElementById('price');
    let totalPrice = document.getElementById('totalPrice');
    let returnTicket = document.getElementById('returnTicket');
    let tickets = document.getElementById('numberOfTicket');
    let originPrice = document.getElementById('ticketPrice');
    document.querySelectorAll('.prices').forEach(item => {
        item.addEventListener('change', event => {
            price.value = (returnTicket.checked) ? (originPrice.value * 1.5).toFixed(2) : originPrice.value;
            totalPrice.value = (price.value * parseInt(tickets.value)).toFixed(2);
        });
    });
});