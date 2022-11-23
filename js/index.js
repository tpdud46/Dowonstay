$(function () {
    let priceHeight;
    let h;
    function initSize() {
        priceHeight = $(".priceList>.moreImg").height();
        h = priceHeight * 2;
        $(".priceList").height(h);
        $(".priceList").css("padding-bottom", "20px");
    }
    initSize();

    $(".priceList").css("padding-bottom", "20px");
    $(".more>a").on("click", function (e) {
        e.preventDefault();
        h = priceHeight * 3;
        $(".priceList").height(h);
        $(".moreImg:nth-child(3)").css("opacity", 1);
        $(".priceList>.more").css("display", "none");
    })
    $(".loadMore>a").on("click", function (e) {
        e.preventDefault();
        h = priceHeight * 3;
        $(".priceList").height(h);
        $(".moreImg:nth-child(3)").css("opacity", 1);
        $(".loadMore").css("display", "none");
    })


    $(window).on("resize", function () {
        initSize();
    })
})

