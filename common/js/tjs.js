var clickHandler = ('ontouchstart' in document.documentElement ? "touchstart" : "click");
var galleryTouched;

//function fingerMoved(event) {
//    startPosX = event.touches[0].pageX;
//    startPosY = event.touches[0].pageY;
//    endPosX = event.changedTouches[0].pageX;
//    endPosY = event.changedTouches[0].pageY;
//    startSum = startPosX + startPosY;
//    endSum = endPosX + endPosY;
//
//    if (startSum == endSum) {
//        alert('touch');
//    }
//    else {
//        alert('move');
//    }
//
//}
function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}
function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1);
        if (c.indexOf(name) != -1) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

if (!document.addEventListener) {
    var betterWeb = getCookie("ForABetterWeb");
    if (betterWeb != "") { }
    else {
        $("body").append('<div class="overlay"><div class="ie8"><p>You are using a browser that was released in 2009.  In Internet years that is about a million years ago.  You will enjoy this site, and the rest of the Internet, with a modern browser.  You can find one <a hfref="www.google.com/chrome">here</a></p><div class="action"><p><a class="setCookie" href="#" onclick="abetterWeb();">got it, let me in</a></p><p><a href="http://www.google.com/chrome" target="_blank">take me to get a better browser</a></p></div></div></div>');
    }
}
else {
    
}
function abetterWeb(){
    //e.preventDefault();
    $('.overlay, .ie8').remove();
    setCookie("ForABetterWeb", "Declined");

}
$(document).ready(function () {
    
    
    $('#Reviews .descriptor h2:first-child, #Reviews .secondaryPageContent> div:first-child, #Reviews .pageContent>div:first-of-type ').removeClass('hide').addClass('show');


    var index = 0;
    var $imgs = $('.secondaryPageContent > div,.galleryContent');
    var $divs = $('.pageContent > div');
    var $names = $('.descriptor h2');
    $('.pointerRight').on(clickHandler, function () {
        
        var imageCount = $imgs.length;
        
        
        
        if (index == imageCount-1) {
            index = 0;
            $imgs.eq(imageCount-1).removeClass('show').addClass('hide');
            $imgs.eq(index).removeClass('hide').addClass('show');
            $divs.eq(imageCount - 1).removeClass('show').addClass('hide');
            $divs.eq(index).removeClass('hide').addClass('show');
            $names.eq(imageCount - 1).removeClass('show').addClass('hide');
            $names.eq(index).removeClass('hide').addClass('show');
        }
        else {
            index = index + 1
            $imgs.eq(index-1).removeClass('show').addClass('hide');
            $imgs.eq(index).removeClass('hide').addClass('show');
            $divs.eq(index - 1).removeClass('show').addClass('hide');
            $divs.eq(index).removeClass('hide').addClass('show');
            $names.eq(index - 1).removeClass('show').addClass('hide');
            $names.eq(index).removeClass('hide').addClass('show');
        }
        

        console.log('pointer: ' + index);

        })
    $('.pointerLeft').on(clickHandler, function () {

        var imageCount = $imgs.length;



        if (index == (imageCount - imageCount)) {
            index = imageCount -1;
            $imgs.eq(imageCount - imageCount).removeClass('show').addClass('hide');
            $imgs.eq(index).removeClass('hide').addClass('show');
            $divs.eq(imageCount - imageCount).removeClass('show').addClass('hide');
            $divs.eq(index).removeClass('hide').addClass('show');
            $names.eq(imageCount - imageCount).removeClass('show').addClass('hide');
            $names.eq(index).removeClass('hide').addClass('show');
        }
        else {
            index = index - 1;
            $imgs.eq(index + 1).removeClass('show').addClass('hide');
            $imgs.eq(index).removeClass('hide').addClass('show');
            $divs.eq(index + 1).removeClass('show').addClass('hide');
            $divs.eq(index).removeClass('hide').addClass('show');
            $names.eq(index + 1).removeClass('show').addClass('hide');
            $names.eq(index).removeClass('hide').addClass('show');
        }

        console.log('pointer: ' + index);

    })
                
    $('#FAQContent').accordion({
        active: false,
        //heightStyle: "content",
        collapsible: true,
        alwaysOpen: false,
        autoFill: true,
        autoHeight: false 
    });
    $('#FAQ h3').on("click", function () {
        $(this).children('span').toggleClass('rotate');
    });
    $('nav .handle').on('click', function () {
        $('nav,.content-wrapper, header section > div').toggleClass('active');
    });
    $('.imgContainer').on('touchstart', function () {
        galleryTouched = $(this).find('a').attr('href');

    });
    $('.formDescription').on('keyup', function(){
        var charCount = $(this).val().length;
        $('.characterCount').html("Characters:  "+charCount + " of 200");
    });
});

$(window).bind("load resize orientationchange", function (e) {

    var maxHeight = 0;
    parentheight = $('.secondary').height();
    $('.secondary').height(parentheight);
    $('.descriptor blockquote').height(parentheight);
    if ($('body#Home,body#Events ').length > 0) {
    }
    else {
        var maxHeight = 0;
        parentheight = $('.secondary').height();
        $('.secondary').height(parentheight);
        $('.descriptor blockquote').height(parentheight);
        $('.content > div').each(function () {
            maxHeight = $(this).height() > maxHeight ? $(this).height() : maxHeight;
        });
        $('.content > div').height(maxHeight);
    
        var elementHeight = $('#Info .col1 .titleContainer, .descriptor.style2,.secondaryPageContent').height();
        $('.linkers >div > div').height(maxHeight - elementHeight);
        $('#Info .col1 .secondaryPageContent > div').height(maxHeight - elementHeight);
        $('#Reviews .col1 .titleContainer').height(maxHeight - elementHeight);
    }
    var windowSize = $(window).width();
    if (windowSize < 767) {

        $('#Gallery .descriptor').detach().prependTo('.col1').removeClass('rightBorder');
        $('#Gallery .titleContainer').detach().prependTo('.col1');
        $('#Reviews .descriptor').detach().prependTo('.col1').removeClass('rightBorder');
        $('#Reviews .titleContainer').detach().prependTo('.col1');
        $('#Contact .titleContainer').detach().prependTo('.col1');

    }
    

});
function galleryLander(e) {

    window.location.href = galleryTouched;

}

$('.imgContainer')
// log the position of the touchstart interaction
.bind('touchstart', function (e) {
    touchStartPos = $(window).scrollTop();
})
// log the position of the touchend interaction
.bind('touchend', function (e) {
    // calculate how far the page has moved between
    // touchstart and end. 
    var distance = touchStartPos - $(window).scrollTop();

    var $clickableItem = $('.imgContainer'); // the item I want to be clickable if it's NOT a swipe

    // adding this class for devices that
    // will trigger a click event after
    // the touchend event finishes. This 
    // tells the click event that we've 
    // already done things so don't repeat

    $clickableItem.addClass("touched");

    if (distance > 10 || distance < -10) {
        e.preventDefault();
        // the distance was more than 20px
        // so we're assuming they intended
        // to swipe to scroll the list and
        // not selecting a row. 
    } else {
        // we'll assume it was a tap 
        galleryLander();
    }
    
});
