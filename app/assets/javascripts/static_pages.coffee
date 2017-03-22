# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


var main = function() {
    $('#image-url').keyup(function() {
        var url = $(this).val();
        $('.thumbnail img').attr('src', url);
    });
    $('#top-text').keyup(function() {
        var top = $(this).val();
        $('.top-caption').text(top);
    });
    $('#bottom-text').keyup(function() {
        var bottom = $(this).val();
        $('.bottom-caption').text(bottom);
    });
};
$(document).ready(main);

