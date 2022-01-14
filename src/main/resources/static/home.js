$(document).ready(function() {
    let cmp = document.getElementById('companyId');
    let departureData = document.getElementById('data');
    cmp.addEventListener("change", function() {
        if(cmp.value != "-1") {
            $(departureData).empty();
            $.ajax({
                type: "GET",
                url: "/companies/" + cmp.value,
                success: function (data) {
                    let str = "";
                    var options = { year: 'numeric', month: 'long', day: 'numeric' };
                    data.forEach(function(departure) {
                    let d = new Date(departure.dateOfDeparture);
                    str += `
                        str += "<tr>";
                        <td>${new Intl.DateTimeFormat('en-US', options).format(d)}</td>
                        <td>${departure.company.name}</td>
                        <td>${modifyHours(departure.timeOfDeparture)}</td>
                        <td>${modifyHours(departure.timeOfArrival)}</td>
                        <td>${departure.departureStation}</td>
                        <td>${departure.arrivalStation}</td>
                        <td>${departure.price.toFixed(2)}</td>
                        <td>${departure.availableSeats}</td>`;
                        if(departure.availableSeats > 0) {
                            str += `<td><a class="btn btn-info" href="/reservation/${departure.id}">Book</a></td>`;
                        }
                        str += "</tr>";
                    });
                    $(departureData).html(str);
                }
            });
        } else {
            location.reload();
        }
    });
    function modifyHours(hours) {
        return hours.slice(0, 5);
    }
});
