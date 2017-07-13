$.ajax({
	method: "GET",
	url: "http://localhost:9393/swift/json",
	success: function(response) {
		$("#name").text(response.name);
		$("#companiesHead").text("Companies using" + response.name);
		for (var i = 0; i < response.requirements.length; i++) {
			$("#requirements").append("<li>"+response.requirements[i]+"<li>")
		}
		for (var i = 0; i < response.companies_using.length; i++) {
			$("#companies").append("<li>"+response.companies_using[i]+"<li>")
		}
	}
})

$(".nav").click(function(e){
	e.preventDefault();
	var myUrl = $(e.target).attr("href")
	$.ajax({
	method: "GET",
	url: myUrl,
	success: function(response) {
		$("#requirements").empty()
		$("#companies").empty()
		$("#name").text(response.name);
		$("#companiesHead").text("Companies using" + response.name);
		for (var i = 0; i < response.requirements.length; i++) {
			$("#requirements").append("<li>"+response.requirements[i]+"<li>")
		}
		for (var i = 0; i < response.companies_using.length; i++) {
			$("#companies").append("<li>"+response.companies_using[i]+"<li>")
		}
	}
})
})