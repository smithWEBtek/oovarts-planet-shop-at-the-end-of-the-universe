$(function() {

	$(".show-orders").on("click", function(e) {
    // $.ajax({
    //   method: "GET",
    //   url: this.href
    // }).success(function(response){
    //   // Get the response (it's the variable data)
    //   $("div.orders-list").html(response);
    //   // We'd really want to load that data into the DOM (add it to the current page)
    // }).error(function(){
    //   alert("There was an error.");
    // });

    // prevent response from loading a new page
    e.preventDefault();

    $.get(this.href).success(function(json) {
    	var list = $("div.orders-list table")
    	list.html("")

    	list.append("<tr><th>Order ID</th><th>Feature</th><th>Planet</th><th>Size (fy sq.)</th><th>Price (Pu)</th><th>Customer</th><th>Customer Email</th></tr>");

    	json.forEach(function(order) {
    		list.append("<tr><td>"
    		 + order.id + "</td>"
    		 + "<td>" + order.feature.name + "</td>"
    		 + "<td>" + order.planet.name + "</td>"
    		 + "<td>" + order.size + "</td>"
    		 + "<td>" + order.price * 1000 + "</td>"
    		 + "<td>" + order.planet.user.name + "</td>"
    		 + "<td>" + order.planet.user.email
    		 + "</td></tr>")
    		debugger
    	})
    })
	});

	$("#next-feature").on("click", function(e) {

	});
});