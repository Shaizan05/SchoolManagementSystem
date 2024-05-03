/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


var app = new Vue({
    el: "#app",
    data: {
        title: "Simple Todo List",
        buttons: []
    },
    computed: {},
    methods: {},
    created: function () {


        this.buttons.push({
            title: "System",
            sub: "Display, sound, notifications, power ",
            icon: "computer"
        });
        this.buttons.push({
            title: "Devices",
            sub: "Bluetooth, printers, mouse",
            icon: "devices"
        });
        this.buttons.push({
            title: "Phone",
            sub: "Link your Android, iPhone",
            icon: "smartphone"
        });
        this.buttons.push({
            title: "Network & Internet",
            sub: "Wi-Fi, airplane mode, VPN Background",
            icon: "wifi"
        });
        this.buttons.push({
            title: "Personalization",
            sub: "Background, lock screen, colors ",
            icon: "format_color_fill"
        });
        this.buttons.push({
            title: "Accounts",
            sub: "Your accounts, email, sync, work, other people ",
            icon: "account_circle"
        });
        this.buttons.push({
            title: "Search",
            sub: "Find my files, permissions ",
            icon: "search"
        });
        this.buttons.push({
            title: "Time & Language",
            sub: "Speech, region, date ",
            icon: "schedule"
        });
        this.buttons.push({
            title: "Privacy",
            sub: "Location, camera, microphone ",
            icon: "verified_user"
        });
        this.buttons.push({
            title: "Apps",
            sub: "Uninstall, defaults, optional features ",
            icon: "apps"
        });
        this.buttons.push({
            title: "Ease of Access",
            sub: "Narrator, magnifier, high contrast ",
            icon: "accessible"
        });
        this.buttons.push({
            title: "Update & Security",
            sub: "Windows Update, recovery, backup ",
            icon: "privacy_tip"
        });

    }
});

window.addEventListener("mousemove", function (e) {
    mouseMoved(e);
});
function mouseMoved(e) {
    let b = document.querySelector(".blur-effect");
    b.style.top = e.y - 50 + "px";
    b.style.left = e.x - 50 + "px";
}

