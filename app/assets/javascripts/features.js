$(function() {

	$(".show-orders").on("click", function(e) {
    // prevent response from loading a new page
    e.preventDefault();

    $.get(this.href).success(function(json) {
    	var list = $("div.orders-list table")
    	list.html("")

    	list.append("<tr><th>Order ID</th><th>Feature</th><th>Planet</th><th>Size (fy sq.)</th><th>Price (Pu)</th></tr>");

    	json.forEach(function(order) {
    		list.append("<tr><td>"
    		 + order.id + "</td>"
    		 + "<td>" + order.feature.name + "</td>"
    		 + "<td>" + order.planet.name + "</td>"
    		 + "<td>" + order.size + "</td>"
    		 + "<td>" + order.price * 1000
    		 + "</td></tr>")
    	})
    })
	});

	$("#next-feature").on("click", function(e) {

	});
});