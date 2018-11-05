<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="teressajohnsonstudio._Default" %>

<%--  --%>
<asp:Content runat="server" ID="HeadContent" ContentPlaceHolderID="HeadContent">
    <script src="common/js/scrollingcarousel.2.0.js"></script>
    <script>
                                                                  $(function () {

                                                                      var $c = $('#Carousel'),
                                                                          $w = $(window);

                                                                      $c.carouFredSel({
                                                                          align: false,
                                                                          items: 10,
                                                                          scroll: {
                                                                              items: 2,
                                                                              duration: 20000,
                                                                              timeoutDuration: 0,
                                                                              easing: 'linear',
                                                                              pauseOnHover: 'false',
                                                                              circular: true,         // Determines whether the carousel should be circular.
                                                                              infinite: true,         // Determines whether the carousel should be infinite. Note: It is possible to create a non-circular, infinite carousel, but it is not possible to create a circular, non-infinite carousel.
                                                                              responsive: false,      // Determines whether the carousel should be responsive. If true, the items will be resized to fill the carousel.
                                                                              direction: "left",      // The direction to scroll the carousel. Possible values: "right", "left", "up" or "down".
                                                                              width: null,            // The width of the carousel. Can be null (width will be calculated), a number, "variable" (automatically resize the carousel when scrolling items with variable widths), "auto" (measure the widest item) or a percentage like "100%" (only applies on horizontal carousels)
                                                                              height: null,           // The height of the carousel. Can be null (width will be calculated), a number, "variable" (automatically resize the carousel when scrolling items with variable heights), "auto" (measure the tallest item) or a percentage like "100%" (only applies on vertical carousels)
                                                                              align: "center",        // Whether and how to align the items inside a fixed width/height. Possible values: "center", "left", "right" or false.
                                                                              padding: null,          // Padding around the carousel (top, right, bottom and left). For example: [10, 20, 30, 40] (top, right, bottom, left) or [0, 50] (top/bottom, left/right).
                                                                              synchronise: 'null',      // Selector and options for the carousel to synchronise: [string selector, boolean inheritOptions, boolean sameDirection, number deviation] For example: ["#foo2", true, true, 0]
                                                                              cookie: true,          // Determines whether the carousel should start at its last viewed position. The cookie is stored until the browser is closed. Can be a string to set a specific name for the cookie to prevent multiple carousels from using the same cookie.
                                                                              onCreate: null          // Function that will be called after the carousel has been created. Receives a map of all data.
                                                                          }
                                                                      });


                                                                     //$w.bind($c, function () {
                                                                     //    var nw = $w.width();
                                                                     //    if (nw < 990) {
                                                                     //        nw = 990;
                                                                     //    }
                                                                     //
                                                                     //    $c.width(nw * 3);
                                                                     //    $c.parent().width(nw);
                                                                     //
                                                                     //}).trigger($c);

                                                                  });
                                                              </script>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="CarouselWrapper">
        <div class="smallScreen"><img src="common/img/tjs_home_02.jpg" /></div>
        <div id="Carousel">
            <asp:Xml DocumentSource="common/xml/pictures.xml" TransformSource="common/xslt/homepage.xslt" runat="server" />
        </div>
    </div>
    <div class="content clearFix bottomBorder">
        <div class="rightBorder ">
            <h2>Everything that grows holds in perfection but a little moment</h2>
            <p>shakespeare | sonnet 15</p>
            <div class="hexagon"></div>
        </div>
        
        <div class="">
            <h2>We Love What We Do  </h2>
            <p>We strive to provide exceptional design, products, and services within the realm of floral and event design because we love beauty and creation and, well, flowers.</p>
            </div>

    </div>

</asp:Content>
