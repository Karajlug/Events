//= require jquery.fancybox.pack
//= require jquery.fancybox-thumbs
//= require jquery.fancybox-media
//= require jquery.fancybox-buttons

$(document).ready(function() {
    //$(".fancybox").fancybox();
    $(".fancybox").fancybox({
        openEffect      : 'none',
        closeEffect     : 'none',
        helpers : {
            title: {
                type: 'inside'
            },
            thumbs: {
                width   : 50,
                height  : 50
            }
        }
    });
});
