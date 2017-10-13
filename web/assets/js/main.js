$(document).ready(function(){
    $("#carousel-1").on('slide.bs.carousel', function () {
        $('#carousel-1').carousel('pause');
        $('#carousel-1 .active .carousel-caption').removeClass('fadeInUp animated');
        $('#carousel-1 .active .carousel-caption').addClass('fadeOutDown animated');
        setTimeout(function(){
            $('#carousel-1').carousel('next');
        },5000);
    });
    $("#carousel-1").on('slid.bs.carousel', function () {
        $('#carousel-1 .item.active .carousel-caption').removeClass('fadeOutDown animated');
        $('#carousel-1 .item.active .carousel-caption').addClass('fadeInUp animated');
        $('#carousel-1').carousel('pause');
    });
    
    //whatsapp detector
    var isMobile = {
        Android: function() {
            return navigator.userAgent.match(/Android/i);
        },
        BlackBerry: function() {
            return navigator.userAgent.match(/BlackBerry/i);
        },
        iOS: function() {
            return navigator.userAgent.match(/iPhone|iPad|iPod/i);
        },
        Opera: function() {
            return navigator.userAgent.match(/Opera Mini/i);
        },
        Windows: function() {
            return navigator.userAgent.match(/IEMobile/i);
        },
        any: function() {
            return (isMobile.Android() || isMobile.BlackBerry() || isMobile.iOS() || isMobile.Opera() || isMobile.Windows());
        }
    };
    $('.whatsapp').click(function(){
        var msg = $(this).attr('data-text');
        var phone = $(this).attr('data-phone');
        var check = $(this).attr('data-type');
        var whatsapp = "https://api.whatsapp.com/send?phone="+phone+"&text="+msg;
        var call = "tel:"+phone;
        if(isMobile.any()){
            if(check=='call'){
                window.location=call;
            }else if(check=='whatsapp'){
                window.location=whatsapp;
            }
        }else{
            window.location=call;
        }
    });
});