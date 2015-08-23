/**
 * Created by Ilya2 on 8/22/2015.
 */

$(document).ready(function() {

    $('.wrapper').css('height', window.innerHeight);
    $(function() {
        $( "#datepicker" ).datepicker();
    });

});

$(document).on('click', '.switch-view', function() {
    $('.wrapper').css('display', 'none');
    $('#' + $(this).attr('data-view')).css('display', 'flex');
});

$(document).on('click', '.tab', function() {
   $('.tab').removeClass('selected');
    $(this).addClass('selected');
});