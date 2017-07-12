console.log("hi");

$.ajax({
	method: "GET",
	url: "http://localhost:9393/bread/json",
	success: function(response) {
		$(".name").text(response.name);
		$("#type").text(response.type);
		$("#description").text(response.description);
		$("#tastiness").text(response.tasty_level);
	}
});

$("#links a").on("click", function(e) {
	e.preventDefault();
	var url = $(this).attr("href");
	$.ajax({
		method: "GET",
		url: url,
		success: function(response) {
			$(".name").text(response.name);
			$("#type").text(response.type);
			$("#description").text(response.description);
			$("#tastiness").text(response.tasty_level);
		}
	});
})