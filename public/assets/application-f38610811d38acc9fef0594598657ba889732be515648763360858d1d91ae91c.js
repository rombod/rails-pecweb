// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//


 require jquery
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {

});


$('.parallax-window').parallax({imageSrc: 'background.jpg'});



function countChar(val) {

    var len = val.value.length;
    var ctext = len + " Chars";

    var str = val.value;
    var parts = [];
    var partSize = 160;

    while (str) {
        if (str.length < partSize) {
            var rtext = (partSize - str.length) + " Chars Remaining";
            parts.push(str);
            break;
        }
        else {
            parts.push(str.substr(0, partSize));
            str = str.substr(partSize);
        }



    }
    var ptext = parts.length + " Parts";

    

    $('#text-character').val(ctext);
    $('#text-parts').val(ptext);
    $('#text-remaining').val(rtext);

}
;
