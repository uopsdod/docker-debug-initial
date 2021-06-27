// Offset for Site Navigation
$('#siteNav').affix({
	offset: {
		top: 100
	}
})

$( document ).ready(function() {
    console.log( "page ready" );
	$('#p-1').text('Excellent! page fully loaded.')
	$('#a-1').text('Solved')
	
});
