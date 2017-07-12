$('#bix').click(function(e){
	e.preventDefault();
	var dogUrl = $(e.target).attr('href')
	$.ajax({
		method: "GET",
		url: dogUrl,
		success: function(response){
			$('#name').text(response.name);
			$('#breed').text(response.breed);
			$('#skill').text(response.skill)
		}
	})
})

$('#aug').click(function(e){
	e.preventDefault();
	var dogUrl = $(e.target).attr('href')
	$.ajax({
		method: "GET",
		url: dogUrl,
		success: function(response){
			$('#name').text(response.name);
			$('#breed').text(response.breed);
			$('#skill').text(response.skill)
		}
	})
})

$('#griz').click(function(e){
	e.preventDefault();
	var dogUrl = $(e.target).attr('href')
	$.ajax({
		method: "GET",
		url: dogUrl,
		success: function(response){
			$('#name').text(response.name);
			$('#breed').text(response.breed);
			$('#skill').text(response.skill)
		}
	})
})

$('#min').click(function(e){
	e.preventDefault();
	var dogUrl = $(e.target).attr('href')
	$.ajax({
		method: "GET",
		url: dogUrl,
		success: function(response){
			$('#name').text(response.name);
			$('#breed').text(response.breed);
			$('#skill').text(response.skill)
		}
	})
})

$('#lou').click(function(e){
	e.preventDefault();
	var dogUrl = $(e.target).attr('href')
	$.ajax({
		method: "GET",
		url: dogUrl,
		success: function(response){
			$('#name').text(response.name);
			$('#breed').text(response.breed);
			$('#skill').text(response.skill)
		}
	})
})