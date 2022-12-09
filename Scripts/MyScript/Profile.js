$(document).ready(function () {
    $("#btnProfile").click(function () {
        $("#Profile").show();
        $("#Settings").hide();
        $("#Subscription").hide();
    })

    $("#btnSettings").click(function () {
        $("#Settings").show();
        $("#Subscription").hide();
        $("#Profile").hide();
    })
    $("#btnSubscription").click(function () {
        $("#Subscription").show();
        $("#Settings").hide();
        $("#Profile").hide();
    })
})

var z = document.getElementById("bttn");
var a = document.getElementById("Profile");
var b = document.getElementById("Settings");
var c = document.getElementById("Subscription");



function Profile() {
    z.style.left = "110px";
}

function Settings() {
    z.style.left = "0";
}
function Subscription() {
    z.style.left = "0";
}

