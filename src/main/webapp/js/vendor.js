$(function () {
    //Initiate WOW JS
    new WOW().init();

    $('ul.nav li.dropdown').hover(function () {
        $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
    }, function () {
        $(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
    });

    $("#pinCode").on("change", function () {
        var pin = $(this).val();
        if (pin.length == 6) {
            // alert("in");
            $.ajax({
                    url: "https://www.whizapi.com/api/v2/util/ui/in/indian-city-by-postal-code?pin=" + pin + "&project-app-key=pki7mtuus369bvijy8lc2b7w",
                    dataType: 'json',
                    success: function (results) {
                        var city = results.Data[0].City;
                        var state = results.Data[0].State;
                        $("#city").val(city);
                        $("#state").val(state);
                    }
                }
            );
        }
    });

    // // For Drop-down Menu
    // $(".dropdown").hover(
    //     function () {
    //         $('.dropdown-menu', this).stop(true, true).fadeIn("fast");
    //         $(this).toggleClass('open');
    //         $('b', this).toggleClass("caret caret-up");
    //     },
    //     function () {
    //         $('.dropdown-menu', this).stop(true, true).fadeOut("fast");
    //         $(this).toggleClass('open');
    //         $('b', this).toggleClass("caret caret-up");
    //     });

    $("#addImgBtn").change(function () {
        readSaloonImageURL1(this);
    });

    $("#addImgBtn1").change(function () {
        readURL1(this);
    });
    $("#addImgBtn2").change(function () {
        readURL2(this);
    });
    $("#addImgBtn3").change(function () {
        readURL3(this);
    });

    $("#suitableFor").multiselect();
    $("#suitableFor1").multiselect();
    $("#sFor").multiselect();

    if ($("#sFor option[value='Round']").length == 0) {
        // alert("Round");
        $("#sFor").append("<option value='Round'>Round</option>");
    }
    if ($("#sFor option[value='Oval']").length == 0) {
        $("#sFor").append($("<option></option>").val("Oval").html('Oval'));
    }
    if ($("#sFor option[value='Triangle']").length == 0) {
        $("#sFor").append($("<option></option>").val("Triangle").html('Triangle'));
    }
    if ($("#sFor option[value='Long']").length == 0) {
        $("#sFor").append($("<option></option>").val("Long").html('Long'));
    }
    if ($("#sFor option[value='Oblong']").length == 0) {
        $("#sFor").append($("<option></option>").val("Oblong").html('Oblong'));
    }
    if ($("#sFor option[value='Heart']").length == 0) {
        $("#sFor").append($("<option></option>").val("Heart").html('Heart'));
    }
    if ($("#sFor option[value='Diamond']").length == 0) {
        $("#sFor").append($("<option></option>").val("Diamond").html('Diamond'));
    }
    if ($("#sFor option[value='Square']").length == 0) {
        $("#sFor").append($("<option></option>").val("Square").html('Square'));
    }

    $(".right-corder-container-button").hover(function () {
        $(".long-text").addClass("show-long-text");
    }, function () {
        $(".long-text").removeClass("show-long-text");
    });
});

function validatePassword()
{
    var new_password = document.getElementById("pwd1").value;
    var confirm_new_password = document.getElementById("pwd2").value;
    if (document.getElementById("pwd1").value.length < "5")
    {
        alert("Please ensure your password is at least 6 characters long.");
        return false;
    }
    if (new_password != confirm_new_password)
    {
        alert("Password no match");
        return false;
    }
    return true;
}

function readSaloonImageURL1(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#ad').html('');
            $('#addSaloonImageLabel').html('');
            $('#wizardPicturePrw').css('visibility', 'visible');
            $('#wizardPicturePrw').attr('src', e.target.result).fadeIn('slow');
        }
        reader.readAsDataURL(input.files[0]);
    }
}

function readURL1(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#ad1').html('');
            $('#addImage1Label1').html('');
            $('#wizardPicturePrw1').css('visibility', 'visible');
            $('#wizardPicturePrw1').attr('src', e.target.result).fadeIn('slow');
        }
        reader.readAsDataURL(input.files[0]);
    }
}
function readURL2(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#ad2').html('');
            $('#addImage2Label2').html('');
            $('#wizardPicturePrw2').css('visibility', 'visible');
            $('#wizardPicturePrw2').attr('src', e.target.result).fadeIn('slow');
        }
        reader.readAsDataURL(input.files[0]);
    }
}
function readURL3(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $('#ad3').html('');
            $('#addImage3Label3').html('');
            $('#wizardPicturePrw3').css('visibility', 'visible');
            $('#wizardPicturePrw3').attr('src', e.target.result).fadeIn('slow');
        }
        reader.readAsDataURL(input.files[0]);
    }
}