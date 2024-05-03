/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
//Empty Validation Function (Reusability)
function Empty(Element, label) {
    var res = document.getElementById(Element).value;
    if (res === "") {
        alert(label + " can't be empty");
        document.getElementById(Element).focus();
        return false;
    }
    return true;
}

//Login  Function
function validate() {
//    document.getElementById("ajx");
    var status = Empty("email", "Email Id")
            && Empty("pwd", "Password");
    if (status) {
        var email = document.getElementById("email").value;
        var pwd = document.getElementById("pwd").value;
        ajaxCall('POST', 'LoginServlet', 'email=' + email + '&pwd=' + pwd + '&process=login', 'ajx', 'isHtml');
        var div = document.getElementById('ajx').innerHTML;
        if (div > 0) {
            alert("Welcome " + email);
            window.location.href = "UserDashboard.jsp";
        } else if (email === "Admin" && pwd === "Admin") {
            alert("Welcome to Admin Dashboard");
            window.location.href = "Dashboard.jsp";
        } else {
            alert("Details is not valid");
        }

    }
    return false;
}

//Registration function
function regvalid() {
    var status = Empty("user", "UserName") && Empty("age", "Age")
            && Empty("gender", "gender") && Empty("email", "Email Id")
            && Empty("pwd", "Password");
    if (status) {
//        alert("iska bhi validation ho gaya");
        window.location.href = "login.jsp";

    }
    return false;
}


let table = new DataTable('#myTable');
//Dashboard load function
function DashLoad(param) {
    ajaxCall('POST', 'DashboarServlet', 'process=' + param, 'load', 'isHtml');

}

//delete student function
function DeleteStud(elementId) {
    var studMail = elementId.getAttribute("studMail");
    var result = confirm("are you sure you want to delete " + studMail + " student");
    if (result) {
        ajaxCall('POST', 'StudentProcess', 'process=deleteStud&studMail=' + studMail, 'ajx', 'isHtml');
        var div = document.getElementById('ajx').innerHTML;
//        alert(div);
        if (div >= 0) {
            alert("student deleted successfully");
            ajaxCall('POST', 'DashboarServlet', 'process=studload', 'load', 'isHtml');

        } else {
            alert("student not deleted,please try again");

        }
    }

}
//delete Teacher function
function DeleteTeach(elementId) {
    var teachMail = elementId.getAttribute("teachMail");
    var result = confirm("are you sure you want to delete " + teachMail + " teacher");
    if (result) {
        ajaxCall('POST', 'StudentProcess', 'process=deleteteach&teachMail=' + teachMail, 'ajax', 'isHtml');
        var div = document.getElementById('ajax').innerHTML;
        if (div >= 0) {
            alert("teacher deleted successfully");
            ajaxCall('POST', 'DashboarServlet', 'process=teachload', 'load', 'isHtml');

        } else {
            alert("teacher not deleted,please try again");

        }
    }

}

//Log Out function
function Logout() {
    var res = confirm("Are you Sure You Want to Log Out");
    if (res) {
        window.location.href = "login.jsp";
    }
}

//Get Add student form function
function Addstudform() {
    ajaxCall('POST', 'DashboarServlet', 'process=addstud', 'load', 'isHtml');
}

//Get Add teacher form function
function Addteachform() {

    ajaxCall('POST', 'DashboarServlet', 'process=addteach', 'load', 'isHtml');

}

//Add student function
function AddStudent() {
    var result = Empty("name", "Name")
            && Empty("email", " email")
            && Empty("pwd", "Password")
            && Empty("age", "age")
            && Empty("gender", "gender")
            && Empty("height", "height")
            && Empty("weight", "weight");


    if (result) {
        var name = document.getElementById("name").value;
        var email = document.getElementById("email").value;
        var pass = document.getElementById("pwd").value;
        var age = document.getElementById("age").value;
        var gender = document.getElementById("gender").value;
        var height = document.getElementById("height").value;
        var weight = document.getElementById("weight").value;
//        var date = document.getElementById("date").value;
        var data = 'name=' + name + '&email=' + email + '&pass=' + pass + '&age=' + age + '&gender=' + gender + '&height=' + height + '&weight=' + weight;

//        var data = 'name=' + name + '&email=' + email + '&pass=' + pass + '&age=' + age;
        ajaxCall('POST', 'StudentProcess', data + "&process=addstudent", 'addajx', 'isHtml');
        var div = document.getElementById('addajx').innerHTML;
        alert(div);
        if (div >= 0) {
            alert('Student Added');
            ajaxCall('POST', 'DashboarServlet', 'process=studload', 'load', 'isHtml');
        } else {
            alert('Student is Not Added ,Try Again please');
        }
    }

}

//Add Teacher Function
function AddTeacher() {
    var result = Empty("id", "Teacher Id")
            && Empty("name", "Name")
            && Empty("email", " email")
            && Empty("address", "address")
            && Empty("age", "age");

    if (result) {
        var id = document.getElementById("id").value;
        var name = document.getElementById("name").value;
        var email = document.getElementById("email").value;
        var address = document.getElementById("address").value;
        var age = document.getElementById("age").value;

        var data = 'id=' + id + '&name=' + name + '&email=' + email + '&address=' + address + '&age=' + age;
        ajaxCall('POST', 'StudentProcess', data + "&process=addteacher", 'addteach', 'isHtml');
        var div = document.getElementById('addteach').innerHTML;
        alert(div);
        if (div >= 0) {
            alert('teacher Added');
            ajaxCall('POST', 'DashboarServlet', 'process=teachload', 'load', 'isHtml');
        } else {
            alert('teacher is Not Added ,Try Again please');
        }
    }
}

//Back To Step Function
function BackStep(param) {
    if (param === "backstud") {
        ajaxCall('POST', 'DashboarServlet', 'process=studload', 'load', 'isHtml');

    } else if (param === "backteach") {
        ajaxCall('POST', 'DashboarServlet', 'process=teachload', 'load', 'isHtml');

    } else if (param === "backsetting") {
        ajaxCall('POST', 'userServlet', 'process=setting', 'dash', 'isHtml');
    } else if (param === "backlib") {
        ajaxCall('POST', 'DashboarServlet', 'process=libload', 'load', 'isHtml');
    }
}
//get Edit student form Function
function EditStud(elementId) {
    var studMail = elementId.getAttribute("studMail");
    ajaxCall('POST', 'DashboarServlet', 'studMail=' + studMail + '&process=updatestud', 'load', 'isHtml');
//    ajaxCall('POST', 'DashboarServlet', 'process=updatestud', 'load', 'isHtml');

}

//get Edit teacher form Function
function EditTeach(elementId) {
    var teachid = elementId.getAttribute("tid");
    ajaxCall('POST', 'DashboarServlet', 'tid=' + teachid + '&process=updteach', 'load', 'isHtml');
}

//get Edit library form Function
function EditLib(elementId) {
    var Bookauth = elementId.getAttribute("Bookauth");
    ajaxCall('POST', 'DashboarServlet', 'Bookauth=' + Bookauth + '&process=updatelib', 'load', 'isHtml');
}


//Update student details function
function udatestudent() {
    var name = document.getElementById("name").value;
    var studMail = document.getElementById("email").value;
    var password = document.getElementById("pwd").value;
    var age = document.getElementById("age").value;
    var gender = document.getElementById("gender").value;
    var height = document.getElementById("height").value;
    var weight = document.getElementById("weight").value;
    var data = 'name=' + name + '&studMail=' + studMail + '&password=' + password + '&age=' + age + '&gender=' + gender + '&height=' + height + '&weight=' + weight;
    ;
    ajaxCall('POST', 'StudentProcess', data + "&process=updatestudent", 'editstudajx', 'isHtml');
    var div = document.getElementById('editstudajx').innerHTML;
//        alert(div);
    if (div >= 0) {
        alert(name + ' has been edited successfully');
        ajaxCall('POST', 'DashboarServlet', 'process=studload', 'load', 'isHtml');

    } else {
        alert(name + ' is Not Edited ,Try Again please');
    }
}


//Update teacher details function
function UpdateTeach() {
//    alert(tid);
    var tid = document.getElementById('id').value;
    var name = document.getElementById('name').value;
    var email = document.getElementById('email').value;
    var address = document.getElementById('address').value;
    var age = document.getElementById('age').value;
    var data = 'tid=' + tid + '&name=' + name + '&email=' + email + '&address=' + address + '&age=' + age;

    ajaxCall('POST', 'DashboarServlet', data + '&process=updateteacher', 'edtajx', 'isHtml');
    var div = document.getElementById('edtajx').innerHTML;
    alert(div);
    if (div >= 0) {
        alert(name + ' has been edited successfully');
        ajaxCall('POST', 'DashboarServlet', 'process=teachload', 'load', 'isHtml');
    } else {
        alert(name + ' is Not Edited ,Try Again please');
    }

}

//Contact Us function 
function contact() {
    var result = Empty("name", "Name")
            && Empty("email", " email")
            && Empty("subject", "subject")
            && Empty("message", "message");

    if (result) {
        var name = document.getElementById('name').value;
        var email = document.getElementById('email').value;
        var subject = document.getElementById('subject').value;
        var message = document.getElementById('message').value;

        var data = 'name=' + name + '&email=' + email + '&subject=' + subject + '&message=' + message;
        ajaxCall('POST', 'userServlet', data + '&process=contacts', 'contajx', true);
        var div = document.getElementById('contajx').value;
//        alert(div);
        if (div >= 0) {
            alert(name + " Your Request Has been Sended Successfully");
            ajaxCall('POST', 'userServlet', 'process=contact', 'dash', 'isHtml');

        } else {
            alert("Something Went Wrong ,Please Try Again");

        }
    }
}
//setting update function 
function supdate() {
    ajaxCall('POST', 'StudentProcess', 'process=supdate', 'dash', 'isHtml');
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