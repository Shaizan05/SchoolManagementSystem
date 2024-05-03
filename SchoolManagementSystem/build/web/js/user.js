/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


let sidebar = document.querySelector(".sidebar");
let closeBtn = document.querySelector("#btn");
let searchBtn = document.querySelector(".bx-search");

closeBtn.addEventListener("click", () => {
    sidebar.classList.toggle("open");
    menuBtnChange();
});

searchBtn.addEventListener("click", () => {
    sidebar.classList.toggle("open");
    menuBtnChange();
});

function menuBtnChange() {
    if (sidebar.classList.contains("open")) {
        closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");
    } else {
        closeBtn.classList.replace("bx-menu-alt-right", "bx-menu");
    }
}
// dashboar user
function UserDashLoad(param) {
    ajaxCall('POST', 'userServlet', 'process=' + param, 'dash', 'isHtml');
}

//function that update the user's profile
function updateset() {
    var name = document.getElementById('name').value;
    var email = document.getElementById('email').value;
    var gender = document.getElementById('gender').value;

    var data = 'name=' + name + '&email=' + email + '&gender=' + gender;
    ajaxCall('POST', 'StudentProcess', data + "&process=updateprofile", 'editsset', 'isHtml');
    var div = document.getElementById('editsset').innerHTML;
    alert(div);
    if (div >= 0) {
        alert("congrats.., you are profile updated successfuly");
        ajaxCall('POST', 'userServlet', 'process=setting', 'dash', 'isHtml');

    } else {
        alert("something went wrong");
    }



}

//Ajax Call Predefine Function
function ajaxCall(method, url, data, destination, isHtml) {
    var xhttp = new XMLHttpRequest();


    // event
    xhttp.onload = function () {
        if (isHtml) {
            document.getElementById(destination).innerHTML = this.responseText;

        } else {
            document.getElementById(destination).value = this.responseText;
        }
    };

    xhttp.open(method, url, false);
    xhttp.setRequestHeader('content-type', 'application/x-www-form-urlencoded');

    xhttp.send(data);
}