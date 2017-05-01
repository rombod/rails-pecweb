# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


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