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

	$(".js-next").on("click", function() {
		var nextId = parseInt($(".js-next").attr("data-id")) + 1;
    $.get("/features/" + nextId + ".json", function(feature) {
      $(".featureName").text(feature["name"]);
      $(".featureDescription").text(feature["description"]);
      // re-set the id to current on the link
      $(".js-next").attr("data-id", feature["id"]);
    });
	});
});