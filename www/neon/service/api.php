<?include_once("{$_SERVER['SERVER_ROOT']}/inc/common.inc")?>

var tag = document.createElement('script');

tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

var player;
function onYouTubeIframeAPIReady() {
	player = new YT.Player('player', {
		width: '100%',

		videoId: '<?=$videoId?>',
		events: {
//			'onReady': onPlayerReady,
//			'onStateChange': onPlayerStateChange
		}
	});
}

function onPlayerReady(event) {
	event.target.playVideo();
}

var done = false;
function onPlayerStateChange(event) {
	if (event.data == YT.PlayerState.PLAYING && !done) {
		setTimeout(stopVideo, 6000);
		done = true;
	}
}

function stopVideo() {
	player.stopVideo();
}

function seekVideo(sec) {
	player.pauseVideo();
	player.seekTo(sec,true);
	player.playVideo();
}
