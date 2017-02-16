/**
 * Created by Gourav on 10/18/2016.
 */


$(function () {

    $("#viewVendors").click(function () {
        window.location.href = "Admin_VendorViewAll.html";
    });

    $("#ActivateVendor").click(function () {
        window.location.href = "Admin_ActivateVendor.html";
    });

    $("#DeactivateVendor").click(function () {
        window.location.href = "Admin_ActivateVendor.html";
    });

    $("#complaints").click(function () {
        window.location.href = "Admin_Complaints.html";
    });

    //#main-slider
    $('#main-slider.carousel').carousel({
        interval: 4000
    });

    //Initiate WOW JS
    new WOW().init();

    // For Drop-down Menu
    $('ul.nav li.dropdown').hover(function() {
        $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
    }, function() {
        $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
    });
});

function myFunction() {
    // Declare variables
    var input, filter, table, tr, td, i;
    input = document.getElementById("saloonNameInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("vendorsListTable");
    tr = table.getElementsByTagName("tr");

    // Loop through all table rows, and hide those who don't match the search query
    for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[0];
        if (td) {
            if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                tr[i].style.display = "";
            } else {
                tr[i].style.display = "none";
            }
        }
    }
}

// $("#main").html($("#mainPageContent"));
// $("#mainPageContent").css("visibility","visible");
//
// $("#dashboard").click(function () {
//    $("#main").empty();
//     $("#main").html($("#mainPageContent"));
//     $("#mainPageContent").css("visibility","visible");
// });
//
// $("#vendors").click(function () {
//     $("#main").empty();
//     $("#main").html($("#vendorsList"));
//     $("#vendorsList").css("visibility","visible");
// });
//
// $('#vendor_viewAll').click(function () {
//     $("#main").empty();
//     $("#main").html($("#vendorsList"));
//     $("#vendorsList").css("visibility","visible");
// });
//
// $("#activateVendor").click(function () {
//     $("#main").empty();
//     $("#main").html($("#activateVendor"));
//     $("#activateVendor").css("visibility","visible");
// });
//
// $("#deactivateVendor").click(function () {
//     $("#main").empty();
//     $("#main").html($("#deactivateVendor"));
//     $("#deactivateVendor").css("visibility","visible");
// });
