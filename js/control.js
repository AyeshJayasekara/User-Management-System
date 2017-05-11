/**
 * Created by ayeshjayasekara1 on 5/8/17.
 */

function msgg(){
    document.getElementById("l1").removeAttribute("label-success");
    document.getElementById("l1").setAttribute("label-danger");
}

// '.tbl-content' consumed little space for vertical scrollbar, scrollbar width depend on browser/os/platfrom. Here calculate the scollbar width .
$(window).on("load resize ", function() {
    var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
    $('.tbl-header').css({'padding-right':scrollWidth});
}).resize();