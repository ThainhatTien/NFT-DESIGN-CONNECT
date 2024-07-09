$(document).ready(function() {
    var sectionArray = ['home', 'about', 'shop', 'contact', 'cart', 'profile'];

    // Click scroll
    $.each(sectionArray, function(index, value) {
        $('.click-scroll[href="/' + value + '"]').click(function(e) {
            var targetElement = $('#' + value);
            if (targetElement.length) {
                var offsetClick = targetElement.offset().top - 70;
                e.preventDefault();
                $('html, body').animate({
                    'scrollTop': offsetClick
                }, 300);

                // Add active class to clicked item and remove from others
                $('.navbar-nav .nav-link').removeClass('active');
                $(this).addClass('active');
            }
        });
    });

    // Scroll spy
    $(window).scroll(function() {
        var docScroll = $(window).scrollTop();
        $.each(sectionArray, function(index, value) {
            var targetElement = $('#' + value);
            if (targetElement.length) {
                var offsetSection = targetElement.offset().top - 70;
                if (docScroll + 1 >= offsetSection) {
                    $('.navbar-nav .nav-link').removeClass('active');
                    $('.navbar-nav .nav-link[href="/' + value + '"]').addClass('active');
                }
            }
        });
    });

    // Initial active state
    $('.navbar-nav .nav-item .nav-link').addClass('inactive');
    $('.navbar-nav .nav-item .nav-link[href="/home"]').addClass('active').removeClass('inactive');
    
    // Scroll spy to show/hide navbar
    var lastScrollTop = 0;
    var delta = 5; // Threshold for scroll down/up detection

    $(window).scroll(function(event) {
        var st = $(this).scrollTop();

        // Scroll down
        if (st > lastScrollTop && st > delta) {
            $('.navbar').addClass('hidden');
        } else {
            // Scroll up or top of page
            $('.navbar').removeClass('hidden');
        }
        lastScrollTop = st;
    });
});
