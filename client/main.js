
$('.link').click(function(e){
	e.preventDefault();
	var getUrl = $(e.target).attr('href')

	$.ajax({
		method: 'GET',
		url: getUrl,
		success: function(response){
			$('#albums').empty();
			$('#name').text(response.name)
			for(i = 0; i < response.albums.length; i++){
			$('#albums').append('<li>' + response.albums[i] + '</li>')
			}
		}
	})
})