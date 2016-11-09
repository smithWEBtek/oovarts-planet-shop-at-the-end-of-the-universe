$(function() {

	var currentId;

	String.prototype.parameterize = function () {
    return this.trim().replace(/[^a-zA-Z0-9-\s]/g, '').replace(/[^a-zA-Z0-9-]/g, '-').toLowerCase();
	}

	$(".show-orders").on("click", function(e) {
    // prevent response from loading a new page
    // e.preventDefault();

    $(this).data('clicked', true);

    currentId = $(".js-next").attr("data-id");

    $.get("/features/" + currentId + "/orders").success(function(json) {
    	console.log(currentId);
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
      $("#featureName").text(feature["name"]);
      $("#featureDescription").text(feature["description"]);
      $("#featureImage").attr("src", "/assets/" + feature["name"].parameterize() + ".jpg");

      console.log(document.getElementById('featureImage').src)

      // re-set the id to current on the link
      $(".js-next").attr("data-id", feature["id"]);

      // does not show orders if user has not already clicked for it
	    if($(".show-orders").data('clicked')) {
		    $(".show-orders").click();
			}
    });
	});

	$("#new_feature").on('submit', function(e) {
		e.preventDefault();

	// 	$.ajax({
	// 		type: "post",
	// 		url: "/features",
	// 		data: $(this).serialize();
	// 		success: function(response) {
	// 			alert("success")
	// 		}
	// 	})

		var values = $(this).serialize();

		var posting = $.post('/features', values);

		posting.done(function(response) {
			console.log(response);
	    $("#features-list ul").append('<li class="list-group-item"><a href="/features/' + response["id"] + '">' + response["name"] + '</li>');
		});
	});
});


