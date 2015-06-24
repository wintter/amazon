$(document).ready(function() {
    $('.carousel').carousel({
        interval: 5000
    })
});
$(document).on('click', '.category_id a', function() {
    var cat_id = $(this).data('id');
    $.ajax({
        type: "GET",
        data: {id: cat_id},
        dataType: "html",
        url: "/books",
        success: function(response) {
            $('.books_preview').html(response);
        }
    });
});