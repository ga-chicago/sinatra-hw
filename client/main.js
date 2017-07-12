//default page
$.ajax({

	method: 'GET',
	url: 'http://localhost:9393/lakers/json',
	success: function(response){


		$('#team').text(response.name);
		for(i = 0; i< response.players.length; i++){
			$('#players').append('<li>' + response.players[i] + '</li>')
		}
	}
})

$('.link').click(function(e){


	e.preventDefault();
	var clickedUrl = $(e.target).attr('href')

	$.ajax({

		method: "GET",
		url: clickedUrl,
		success: function(response){

			$("#players").empty();
			$("#team").text(response.name);

			for(i = 0; i< response.players.length; i++){
			$('#players').append('<li>' + response.players[i] + '</li>')
		}

		}


	})

})