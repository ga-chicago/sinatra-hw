$.ajax({
	method: 'GET',
	url: 'http://localhost:9393/lion/json',
	success: function(response){
		console.log(response);
		$('#movies').text(response.name);
		for(i = 0; i < response.favorite_movies.length; i++){
			$('#movies').append('<li>'+ response.favorite_movies[i] + '</li>')
		}
	}
})



$('.link').click(function(e){
	e.preventDefault();
	var myURL = $(e.target).atter('href')

	$.ajax({
		method: 'GET',
		url: myUrl,
		success: function(response){
			$('movies').empty();
			$('movie').text(response.name);
			for(i = 0; i < response.favorite_movies.length; i++){
				$('#movies').append('<li>'+ response.favorite_movies[i] + '</li>')
			}
		}
	})
})