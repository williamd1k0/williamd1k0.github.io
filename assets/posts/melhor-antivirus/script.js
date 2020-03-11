
$(document).ready(function(){
	$('#play-avast').click(function(ev){
		ev.preventDefault();
		document.querySelector('#audio-play-avast').play();
	});
});