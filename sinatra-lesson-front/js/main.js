$.ajax({
  url: 'http://localhost/9393/'
  method: 'GET',
  success: function(response){
    console.log(response)
    $('#name').text(response.name)
    for (var i = 0; i < response.methods.length; i++){
      $('#methods').append('<li>' + response.methods[i] + '</li>')
    }
    
  }
})
