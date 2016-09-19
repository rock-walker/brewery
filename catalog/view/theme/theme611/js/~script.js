var gl_path = jQuery('#gl_path').html();
function include(scriptUrl) {
    document.write('<script src="catalog/view/theme/' + gl_path + '/' + scriptUrl + '"></script>');
}
var isMobile = false; //initiate as false
// device detection
if(/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|ipad|iris|kindle|Android|Silk|lge |maemo|midp|mmp|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows (ce|phone)|xda|xiino/i.test(navigator.userAgent) 
    || /1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(navigator.userAgent.substr(0,4))) isMobile = true;
/* Easing library
========================================================*/
include('js/jquery.easing.1.3.js');

/* ToTop
========================================================*/
;
(function ($) {
    var o = $('html');
    if (o.hasClass('desktop')) {
        include('js/jquery.ui.totop.js');

        $(document).ready(function () {
            $().UItoTop({easingType: 'easeOutQuart'});
        });
    }
})(jQuery);


/* Stick up menus
========================================================*/
;
(function ($) {
    var o = $('html');
    var menu = $('#stuck');
    if (o.hasClass('desktop') && menu.length) {
        include('js/scrollfix.js');

        $(window).load(function () {
            menu.scrollFix({
                style: false
            });
        });
    }
})(jQuery);

/* Unveil
========================================================*/
;
(function ($) {
    var o = $('.lazy img');

    if (o.length > 0) {
        include('js/jquery.unveil.js');

        $(document).ready(function () {
            $(o).unveil(0, function () {
                $(this).load(function () {
                    $(this).parent().addClass("lazy-loaded");
                })
            });
        });

        $(window).load(function () {
            $(window).trigger('lookup.unveil');
            if ($('.nav-tabs').length) {
                $('.nav-tabs').find('a[data-toggle="tab"]').click(function () {
                    setTimeout(function () {
                        $(window).trigger('lookup.unveil');
                    }, 400);
                })
            }
        });

    }
})(jQuery);

/* Magnificent
========================================================*/
;
(function ($) {
    var o = $('#image-additional');
    if (o.length > 0) {
        include('js/magnificent/jquery.ba-throttle-debounce.js');
        include('js/magnificent/jquery.bridget.js');
        include('js/magnificent/magnificent.js');

        $(document).ready(function () {

            o.find('li:first-child a').addClass('active');

            $('#product-image').bind("click", function (e) {
                var imgArr = [];
                o.find('a').each(function () {
                    img_src = $(this).data("image");

                    //put the current image at the start
                    if (img_src == $('#product-image').find('img').attr('src')) {
                        imgArr.unshift({
                            href: '' + img_src + '',
                            title: $(this).find('img').attr("title")
                        });
                    }
                    else {
                        imgArr.push({
                            href: '' + img_src + '',
                            title: $(this).find('img').attr("title")
                        });
                    }
                });
                $.fancybox(imgArr);
                return false;
            });


            o.find('[data-image]').click(function (e) {
                e.preventDefault();
                o.find('.active').removeClass('active');
                var img = $(this).data('image');
                $(this).addClass('active');
                $('#product-image').find('.inner img').each(function () {
                    $(this).attr('src', img);
                })
            })

        });

}
})
(jQuery);


/* Bx Slider
========================================================*/
;
(function ($) {
    var o = $('#image-additional');
    var o2 = $('#gallery');
    if (o.length || o2.length) {
        include('js/jquery.bxslider/jquery.bxslider.js');
    }

    if (o.length) {
        $(document).ready(function () {
            $('#image-additional').bxSlider({
                mode: 'vertical',
                pager: false,
                controls: true,
                slideMargin: 13,
                minSlides: 4,
                maxSlides: 4,
                slideWidth: 88,
                nextText: '<i class="fa fa-chevron-down"></i>',
                prevText: '<i class="fa fa-chevron-up"></i>',
                infiniteLoop: false,
                adaptiveHeight: true,
                moveSlides: 1
            });
        });
    }

    if (o2.length) {
        include('js/photo-swipe/klass.min.js');
        include('js/photo-swipe/code.photoswipe.jquery-3.0.5.js');
        include('js/photo-swipe/code.photoswipe-3.0.5.min.js');
        $(document).ready(function () {
            $('#gallery').bxSlider({
                pager: false,
                controls: true,
                minSlides: 1,
                maxSlides: 1,
                infiniteLoop: false,
                moveSlides: 1
            });
        });
    }

})(jQuery);

/* FancyBox
========================================================*/
;
(function ($) {
    var o = $('.quickview');
    var o2 = $('#default_gallery');
    if (o.length > 0 || o2.length > 0) {
        include('js/fancybox/jquery.fancybox.js');
    }

    if (o.length) {
        $(document).ready(function () {
            o.fancybox({
                maxWidth: 800,
                maxHeight: 600,
                fitToView: false,
                width: '70%',
                height: '70%',
                autoSize: false,
                closeClick: false,
                openEffect: 'elastic',
                closeEffect: 'elastic'
            });
        });
    }

})(jQuery);

/* Superfish menus
========================================================*/
;
(function ($) {
    include('js/superfish.js');
    $(window).load(function () {
        $('#tm_menu .menu').superfish();
    });
})(jQuery);

/* Owl Carousel
========================================================*/
;
(function ($) {
    var o = $('.related-slider');
    if (o.length > 0) {
        $(document).ready(function () {
            o.owlCarousel({
                // Most important owl features
                items: 4,
                itemsCustom: false,
                itemsDesktop: [1199, 4],
                itemsDesktopSmall: [980, 3],
                itemsTablet: [768, 2],
                itemsTabletSmall: false,
                itemsMobile: [479, 1],

                // Navigation
                pagination: false,
                navigation: true,
                navigationText: ['<i class="material-design-keyboard54"></i>', '<i class="material-design-keyboard53"></i>']


            });
        });
    }
})(jQuery);

/* Box Carousel
========================================================*/
;
(function ($) {
    var o = $('.box-carousel');
    if (o.length > 0) {
        $(document).ready(function () {
            $.each(o, function () {
                if ($(this).parents('aside').length == 0) {
                    o.owlCarousel({
                        // Most important owl features
                        items: 4,
                        itemsCustom: false,
                        itemsDesktop: [1199, 4],
                        itemsDesktopSmall: [980, 3],
                        itemsTablet: [768, 2],
                        itemsTabletSmall: false,
                        itemsMobile: [479, 1],

                        // Navigation
                        pagination: false,
                        navigation: true,
                        navigationText: ['<i class="material-design-keyboard54"></i>', '<i class="material-design-keyboard53"></i>'],


                    });
                }
            });
        });
    }
})(jQuery);

/* GREEN SOCKS
========================================================*/
;
(function ($) {
    var o = $('html');
    if (o.hasClass('desktop') && o.find('body').hasClass('common-home')) {
        include('js/greensock/jquery.gsap.min.js');
        include('js/greensock/TimelineMax.min.js');
        include('js/greensock/TweenMax.min.js');
        include('js/greensock/jquery.scrollmagic.min.js');

        function listBlocksAnimate(block, element, row, offset, difEffect) {
            if ($(block).length) {
                var i = 0;
                var j = row;
                var k = 1;
                var effect = -1;

                $(element).each(function () {
                    i++;

                    if (i > j) {
                        j += row;
                        k = i;
                        effect = effect * (-1);
                    }

                    if (effect == -1 && difEffect == true) {
                        ef = TweenMax.from(element + ':nth-child(' + i + ')', 0.5, {
                            left: -1 * 200 - i * 300 + "px",
                            alpha: 0,
                            ease: Power1.easeOut
                        })

                    } else {
                        ef = TweenMax.from(element + ':nth-child(' + i + ')', 0.5, {
                            right: -1 * 200 - i * 300 + "px",
                            alpha: 0,
                            ease: Power1.easeOut
                        })
                    }

                    var scene_new = new ScrollScene({
                        triggerElement: element + ':nth-child(' + k + ')',
                        offset: offset,
                    }).setTween(ef)
                    .addTo(controller)
                    .reverse(false);
                });
}
}

function listTabsAnimate(element) {
    if ($(element).length) {
        TweenMax.staggerFromTo(element, 0.3, {alpha: 0, rotationY: -90, ease: Power1.easeOut}, {
            alpha: 1,
            rotationY: 0,
            ease: Power1.easeOut
        }, 0.1);
    }
}

$(document).ready(function () {
    controller = new ScrollMagic();
});

$(window).load(function () {
            //if ($(".fluid_container").length) {
            //    var welcome = new TimelineMax();
            //
            //    welcome.from(".fluid_container h2", 0.5, {top: -300, autoAlpha: 0})
            //        .from(".fluid_container h4", 0.5, {bottom: -300, autoAlpha: 0});
            //
            //    var scene_welcome = new ScrollScene({
            //        triggerElement: ".fluid_container",
            //        offset: -100
            //    }).setTween(welcome).addTo(controller).reverse(false);
            //}
        });
}
})(jQuery);

/* Swipe Menu
========================================================*/
;
(function ($) {
    $(document).ready(function () {
        $('#page').click(function () {
            if ($(this).parents('body').hasClass('ind')) {
                $(this).parents('body').removeClass('ind');
                return false
            }
        })

        $('.swipe-control').click(function () {
            if ($(this).parents('body').hasClass('ind')) {
                $(this).parents('body').removeClass('ind');
                $(this).removeClass('active');
                return false
            }
            else {
                $(this).parents('body').addClass('ind');
                $(this).addClass('active');
                return false
            }
        })
    });

})(jQuery);


/* EqualHeights
========================================================*/
;
(function ($) {
    var o = $('[data-equal-group]');
    if (o.length > 0) {
        include('js/jquery.equalheights.js');
    }
})(jQuery);

$(document).ready(function () {
    /***********CATEGORY DROP DOWN****************/
    $("#menu-icon").on("click", function () {
        $("#menu-gadget .menu").slideToggle();
        $(this).toggleClass("active");
    });

    $('#menu-gadget .menu').find('li>ul').before('<i class="fa fa-angle-down"></i>');
    $('#menu-gadget .menu li i').on("click", function () {
        if ($(this).hasClass('fa-angle-up')) {
            $(this).removeClass('fa-angle-up').parent('li').find('> ul').slideToggle();
        }
        else {
            $(this).addClass('fa-angle-up').parent('li').find('> ul').slideToggle();
        }
    });
    if ($('.breadcrumb').length) {
        var o = $('.breadcrumb li:last-child');
        var str = o.find('a').html();
        o.find('a').css('display', 'none');
        o.append('<span>' + str + '</span>');
    }
});

var flag = true;

function respResize() {
    var width = window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth;

    if ($('aside').length) {
        var leftColumn = $('aside');
    } else {
        return false;
    }


    if (width > 767) {
        if (!flag) {
            flag = true;
            leftColumn.insertAfter('#content');
            $('.col-sm-3 .box-heading').unbind("click");

            $('.col-sm-3 .box-content').each(function () {
                if ($(this).is(":hidden")) {
                    $(this).slideToggle();
                }
            })
        }
    } else {
        if (flag) {
            flag = false;
            leftColumn.insertAfter('#content');

            $('.col-sm-3 .box-content').each(function () {
                if (!$(this).is(":hidden")) {
                    $(this).parent().find('.box-heading').addClass('active');
                }
            });

            $('.col-sm-3 .box-heading').bind("click", function () {
                if ($(this).hasClass('active')) {
                    $(this).removeClass('active').parent().find('.box-content').slideToggle();
                }
                else {
                    $(this).addClass('active');
                    $(this).parent().find('.box-content').slideToggle();
                }
            })
        }
    }
}

$(window).load(respResize);
$(window).resize(function () {
    clearTimeout(this.id);
    this.id = setTimeout(respResize, 500);
});

/* Aside Menu
========================================================*/
;
(function ($) {
    $(document).ready(function(){
        if ($(window).width() > 1530){
            $('#page').addClass('open');
            $('#sidebar-btn').addClass('active').children('i').addClass('material-design-keyboard54');
        }
        else {
            if ($(window).width() <= 1530) {
                $('#sidebar-btn').children('i').addClass('material-design-keyboard53');
            }
        }
        $('#sidebar-btn').click(function(){
            if( $(this).parents('#page').hasClass('open')){
                $(this).removeClass('active').children('i').addClass('material-design-keyboard53').removeClass('material-design-keyboard54');
                $(this).parents('#page').removeClass('open');
            }
            else {
                if (!$(this).parents('#page').hasClass('open')){
                   $(this).addClass('active').children('i').addClass('material-design-keyboard54').removeClass('material-design-keyboard53');
                   $(this).parents('#page').addClass('open');
               }
           }
       });
    });
    if (!isMobile) {
        $(window).resize(function(){
            if ($(window).width() > 1530 && !$('#page').hasClass('open')){
                $('#page').addClass('open');
                $('#sidebar-btn').addClass('active').children('i').addClass('material-design-keyboard54').removeClass('material-design-keyboard53');;
            }
            else {
                if ($(window).width() <= 1530 && $('#page').hasClass('open')){
                    $('#page').removeClass('open');
                    $('#sidebar-btn').removeClass('active').children('i').addClass('material-design-keyboard53').removeClass('material-design-keyboard54');
                }
            }
        });    
    }
    
})(jQuery);

/* Toggle
========================================================*/
;
(function ($) {
    var o = $('.toggle');
    $(document).ready(function () {
        $('.toggle').click(function (e) {
            e.preventDefault();
            var tmp = $(this);
            o.each(function () {
                if ($(this).hasClass('active') && !$(this).is(tmp)){
                    $(this).parent().find('.toggle_cont').slideToggle();
                    $(this).removeClass('active');
                }
            });
            $(this).toggleClass('active');
            $(this).parent().find('.toggle_cont').slideToggle();
        });
        $(document).click(function(e) {
            var container = $(".toggle-sw");
            if (!container.is(e.target)
                && container.has(e.target).length === 0 && container.find('.toggle').hasClass('active'))
            {
                container.find('.active').toggleClass('active').parent().find('.toggle_cont').slideToggle();
            }
        })
    });
})(jQuery);