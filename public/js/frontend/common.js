$(function(){

    var windowHeight = $( window ).height();
    var windowWidth = $( window ).width();
    if($('div').is('.content')){
        var marTop = +($('.content').css('height').slice(0,-2));
    };
    var hoverTrigger = 1;
    var projectId;
    var url = window.location.pathname.split('/');
    var fromPage = window.location.hash;
    
    /***********height screen*************/
    $('.header, .footer').css({height : (windowHeight - marTop)/2 + 'px'});
    $('.content').css({'top' : (windowHeight - marTop)/2 + 'px'});
    $('.sidebar_right_wrap').css({'bottom' : (windowHeight - marTop)/2 + 'px'});
    /***********END height screen*************/

    /**********Change img in menu**************/

    if(windowHeight <= 900 ||  windowWidth <= 1200){
        $('.nav img, .logo img').each(function () {
            var imgSrc = $(this).attr('src').slice(0,-4) + '_min.png';
            $(this).attr('src', imgSrc);
        });
    };
    
    /**********END change img in menu**************/
    
    /**********Remove start page**************/
    if (url[2] == 'news'){
        $('.normal').remove();
        $('.r-normal').show();
    } else {
        $('.r-normal').remove();
        /**********Vertical slider for news**************/
        $('.bxslider').bxSlider({
            mode: 'vertical',
            minSlides: 3,
            maxSlides: 3,
            moveSlides: 1,
            minHeight: 200,
            slideMargin: 0,
            infiniteLoop: false,
            pager: false
        });
        /**********END Vertical slider for news**************/

        /**********Center alignment img in mobile gallery**************/
        function imgGallPos(){
            $('.mob-gallery-item > img').each(function () {
                var imgHeight = $(this).height();
                var imgMar = (windowHeight - imgHeight)/2;
                if(imgMar < 0) imgMar = 0;
                console.info("windowHeight >>>" + windowHeight);
                console.info("height img >>>" + imgHeight);
                console.info("otstup >>>" + imgMar);
                $('.mob-gallery-item').css({'height': windowHeight + 'px','width': windowWidth + 'px'});
                $(this).css({'max-height': windowHeight + 'px','max-width': windowWidth + 'px'});
                $(this).css({'margin-top': imgMar + 'px'});
            });
        };
        $(window).load(function () {
            imgGallPos();
        });
        $(window).resize(function () {
            windowHeight = $( window ).height();
            windowWidth = $( window ).width();
            imgGallPos();
        });

        /**********END center alignment img in mobile gallery**************/

        /***********Function for scroll page*************/
        function scrollPage(pageOld,UpOrDown) {
            $('.arrow-news').hide();
            $('.arrow').show();

            if(UpOrDown == 'Up'){
                var pageNum = +pageOld - 1;
                if(pageNum == 1){
                    $('.arrow-up').css({'display': 'none'});
                };
                $('.arrow-down').css({'display':'block'});
                if(pageOld == 4){
                    $('.nav a[data-page-num = 3]').trigger("click");
                }
            };
            if(UpOrDown == 'Down'){
                var pageNum = +pageOld + 1;
                if(pageNum == 4){
                    $('.arrow-down').css({'display': 'none'});
                };
                $('.arrow-up').css({'display':'block'});
                if(pageOld == 2){
                    $('.nav a[data-page-num = 3]').trigger("click");
                }
            };
            $('[data-page-num]').removeClass('active');
            $('body').find('[data-page-num=' + pageNum + ']').addClass('active');
            $('.content-wrap').css({'margin-top' : - marTop * (pageNum - 1)});
            $('.r-carousel-wrap').css({'opacity':0,'z-index':-1});
            $('.project-item').show();
        };
        /***********END function for scroll page*************/

        /***********Function for scroll-down gallery item*************/
        function scrollGalleryDown() {
            $('#project-carousel-' + projectId).find('.owl-next').trigger('click');
            if($('#project-carousel-' + projectId + ' .owl-item:last-child').hasClass('active')){
                $('.arrow-gallery-down').hide();
            } else{
                $('.arrow-gallery-down').show();
            }
            if($('#project-carousel-' + projectId + ' .owl-item:not(first-child)').hasClass('active')){
                $('.arrow-gallery-up').show();
            };
        };
        /***********END function for scroll-down gallery item*************/

        /***********Function for scroll-up gallery item*************/
        function scrollGalleryUp() {
            $('#project-carousel-' + projectId).find('.owl-prev').trigger('click');
            if($('#project-carousel-' + projectId + ' .owl-item:first-child').hasClass('active')){
                $('.arrow-gallery-up').hide();
            };
            if($('#project-carousel-' + projectId + ' .owl-item:not(last-child)').hasClass('active')){
                $('.arrow-gallery-down').show();
            };
        };
        /***********END function for scroll-up gallery item*************/

        /***********Navigation menu and click on logo*************/
        $('.nav a, .logo').on("click", function (e) {
            hoverTrigger = 1;
            $('.project-item').show();
            $('.r-carousel-wrap').css({'opacity':0,'z-index':-1});  // hide all gallery
            $('.arrow').show();                                     //show arrow for page pagination
            $('.arrow-gallery, .arrow-news').hide();                //hide arrow for img pagination in gallery
            $('.arrow-gallery-up, .arrow-gallery-down').show();
            $('[data-page-num]').removeClass('active');
            var pageNum = $(this).attr('data-page-num');
            if(pageNum == 1){
                $('.arrow-up').css({'display': 'none'});
            } else {
                $('.arrow-up').css({'display': 'block'});
            };
            if(pageNum == 4){
                $('.arrow-down').css({'display': 'none'});
            } else {
                $('.arrow-down').css({'display': 'block'});
            };
            $('body').find('[data-page-num=' + pageNum + ']').addClass('active');
            $('.content-wrap').css({'margin-top' : - marTop * (pageNum - 1)});
            e.preventDefault();
        });
        /***********END navigation menu and click on logo*************/

        /***********Show news arrow*************/
        $('.nav a[data-page-num = 3]').on("click", function (e) {
            $('.arrow').hide();
            $('.arrow-news, .arrow-news-up, .arrow-news-down').show();

            if(!$(".bx-slider").is("li:first-child[aria-hidden = 'false']")  && !$(".bx-slider").is("li:last-child[aria-hidden = 'true']")){
                $('.arrow-news-up').hide();
            };
            if($(".bx-slider").is("li:last-child[aria-hidden = 'false']")){
                $('.arrow-news-down').hide();
                $('.arrow-news-up').show();
            };

            $('.arrow-news-down').on("click", function () {
                $('.bx-next').trigger("click");
                $('.arrow-news-up').show();
                if($('#bxslider').find('li:last-child').attr('aria-hidden') == 'false'){
                    $(this).hide();
                };
            });
            $('.arrow-news-up').on("click", function () {
                $('.bx-prev').trigger("click");
                $('.arrow-news-down').show();
                if($('#bxslider').find('li:first-child').attr('aria-hidden') == 'false'){
                    $('.arrow-news-up').hide();
                };
            });

            e.preventDefault();
        });

        /***********END show news arrow*************/

        /***********Paggination page*************/
        $('.arrow-up').on("click", function () {
            var pageOld = $('body').find('.nav_item.active').attr('data-page-num');
            scrollPage(pageOld, 'Up');
        });

        $('.arrow-down').on("click", function () {
            var pageOld = $('body').find('.nav_item.active').attr('data-page-num');
            scrollPage(pageOld, 'Down');
        });

        /***********Paggination by mouse wheel*************/
        $('body').bind('mousewheel', function(e){
            var pageOld = $('body').find('.nav_item.active').attr('data-page-num');
            if(hoverTrigger == 1){  //scroll page
                if((e.originalEvent.wheelDelta < 0) && pageOld <= 3) {
                    scrollPage(pageOld, 'Down');
                };
                if((e.originalEvent.wheelDelta > 0) && pageOld >= 2)  {
                    scrollPage(pageOld, 'Up');
                };
                return false;
            } else {    //scroll gallery item
                if((e.originalEvent.wheelDelta < 0) && pageOld <= 3) {
                    scrollGalleryDown();
                };
                if((e.originalEvent.wheelDelta > 0) && pageOld >= 2)  {
                    scrollGalleryUp();
                };
                return false;
            }
        });
        /***********END paggination by mouse wheel*************/

        /***********END paggination*************/

        /***********Show gallery*************/
        $('.project-item').on('click', function () {
            hoverTrigger = 0;
            $('.project-item').hide();
            projectId = $(this).attr('data-id');
            $('.content').find('#project-carousel-' + projectId).css({'opacity':1,'z-index':1});
            $('.arrow-back').show();
            if(!$(this).hasClass('news-item')){
                $('.arrow-gallery').show();
            };
            $('.arrow').hide();
            if($('#project-carousel-' + projectId + ' .owl-item:first-child').hasClass('active')){
                $('.arrow-gallery-up').hide();
            };
            if($(this).hasClass('news-item')){
                $('.arrow-news').hide();
            };
        });

        $('.arrow-gallery-down').on('click', function () {
            scrollGalleryDown();
        });

        $('.arrow-gallery-up').on('click', function () {
            scrollGalleryUp();
        });

        $('.arrow-back').on('click', function () {
            hoverTrigger = 1;
            $('.project-item').show();
            $('.r-carousel-wrap').css({'opacity':0,'z-index':-1});
            $(this).hide();
            if($('.nav a[data-page-num = 3]').hasClass('active')){
                $('.nav a[data-page-num = 3]').trigger("click");
            } else {
                $('.arrow').show();
            }
            $('.arrow-gallery').hide();
            $('.arrow-gallery-up, .arrow-gallery-down').show();
        });
        /***********END show gallery*************/


        /***********Show gallery on mobile*************/
        $('.mob-project-item').on('click', function () {
            projectId = $(this).attr('data-id');
            $('body').find('#mob-project-carousel-' + projectId).toggleClass('active');
        });

        $('.mob-carousel-wrap .close').on('click', function () {
            $(this).parent().toggleClass('active');
        });
        /***********END show gallery on mobile*************/

        /***********Adaptive menu*************/
        $('.button-menu').click(function(){
            $(this).toggleClass('active');
            $('.mob-nav').toggleClass('active');
            $('.button-menu .icon').toggleClass('menu-i').toggleClass('close');
        });
        /***********END adaptive menu*************/
        
        /***********Owl-carousel*************/
        $(".owl-carousel").owlCarousel({
            items:1,
            singleItem: true,
            nav: true,
            navText: "",
            animateOut: "fadeOut",
            animateIn: "fadeIn"
        });
        /***********END owl-carousel*************/

        /***********Button to contact-page*************/
        $('button.order').on('click', function () {
            var pageOld = $('body').find('.nav_item.active').attr('data-page-num');
            scrollPage(pageOld, 'Down');
        });
        /***********END button to contact-page*************/

        /***********Transitions from the news page*************/
        switch (fromPage) {
            case '#about-us':
                $('.nav a[data-page-num = 1]').trigger("click");
                break;
            case '#news':
                $('.nav a[data-page-num = 3]').trigger("click");
                break;
            case '#contact':
                $('.nav a[data-page-num = 4]').trigger("click");
                break;
        }
        if((('http://' +window.location.host + '/' + url[1]) == window.location) || (('http://' +window.location.host + '/' + url[1]) + '#' == window.location)) {
            $('.nav a[data-page-num = 2]').addClass("active");
        }
        /***********END transitions from the news page*************/

        /**********call-back**************/
        $('#send').on('click', function(event){
            $('#send').attr('disabled', true);
            var data = new FormData($('form#contact-callback')[0]);
            var url = $( "input[name$='url']" ).val();
            console.log(data);
            $.ajax({
                url: url,
                method: 'POST',
                processData: false,
                contentType: false,
                data: data,
                dataType : "json",
                success: function(data){
                    //console.info('Server response: ', data);
                    if(data.success){
                        swal(trans['base.success'], "", "success");
                        $("#contact-callback").trigger("reset");
                        $("#send").attr('disabled', false);

                    }
                    else{
                        swal(trans['base.error'], data.message, "error");
                        $("#send").attr('disabled', false);
                    }
                },
                error:function(data){
                    swal(trans['base.error']);
                    $("#send").attr('disabled', false);
                    //  jQuery("#resume-form").trigger("reset");
                }

            });
            event.preventDefault();
        });
        /**********END call-back**************/

    }
/**********END remove start page**************/

    window.location.hash='' ;
});