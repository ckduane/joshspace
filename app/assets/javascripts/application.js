//= require jquery
//= require jquery_ujs
//= require_tree .

// Add user agent as an attribute on the <html> tag...
// Inspiration: https://css-tricks.com/ie-10-specific-styles/
var b = document.documentElement;
b.setAttribute('data-useragent', navigator.userAgent);
b.setAttribute('data-platform', navigator.platform);

// HTML5 audio player + playlist controls
jQuery(function ($) {
    var songs = $("#songData").find("li");
    var tracks= [];
    $.each(songs, function(i) {
        tracks[i] = {
            "track": i+1,
            "name": this.getAttribute("data-song-name"),
            "url": this.getAttribute("data-song-url")
        }
    });
    var supportsAudio = !!document.createElement('audio').canPlayType;
    if (supportsAudio) {
        var index = 0,
            playing = false,
            buildPlaylist = $.each(tracks, function(key, value) {
                var trackNumber = value.track,
                    trackName = value.name,
                    trackLength = value.length;
                console.log(trackName);
                if (trackNumber.toString().length === 1) {
                    trackNumber = '0' + trackNumber;
                } else {
                    trackNumber = '' + trackNumber;
                }
                $('#plList').append('<li><div class="plItem"><div class="plTitle">' + trackName + '</div></div></li>');
            }),
            trackCount = tracks.length,
            npAction = $('#npAction'),
            npTitle = $('#npTitle'),
            audio = $('#audio1').bind('play', function () {
                playing = true;
                npAction.text('playing');
            }).bind('pause', function () {
                playing = false;
                npAction.text('paused');
            }).bind('ended', function () {
                npAction.text('paused');
                if ((index + 1) < trackCount) {
                    index++;
                    loadTrack(index);
                    audio.play();
                } else {
                    audio.pause();
                    index = 0;
                    loadTrack(index);
                }
            }).get(0),
            btnPrev = $('#btnPrev').click(function () {
                if ((index - 1) > -1) {
                    index--;
                    loadTrack(index);
                    if (playing) {
                        audio.play();
                    }
                } else {
                    audio.pause();
                    index = 0;
                    loadTrack(index);
                }
            }),
            btnNext = $('#btnNext').click(function () {
                if ((index + 1) < trackCount) {
                    index++;
                    loadTrack(index);
                    if (playing) {
                        audio.play();
                    }
                } else {
                    audio.pause();
                    index = 0;
                    loadTrack(index);
                }
            }),
            li = $('#plList li').click(function () {
                var id = parseInt($(this).index());
                if (id !== index) {
                    playTrack(id);
                }
            }),
            loadTrack = function (id) {
                $('.plSel').removeClass('plSel');
                $('#plList li:eq(' + id + ')').addClass('plSel');
                npTitle.text(tracks[id].name);
                index = id;
                audio.src = tracks[id].url;
            },
            playTrack = function (id) {
                loadTrack(id);
                audio.play();
            };
            $("#play-btn").click(function() {
              if (audio.paused) { audio.play(); }
            });
            $("#pause-btn").click(function() {
              if (audio.play) { audio.pause(); }
            });
            $("#stop-btn").click(function() {
              if (audio.play) { audio.pause(); }
            });
        loadTrack(index);
    }
});