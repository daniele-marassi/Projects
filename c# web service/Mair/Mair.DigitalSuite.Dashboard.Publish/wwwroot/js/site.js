﻿setInterval(ResizeBody, 200);

function ResizeBody() {
    var navbarHeight = 0;
    var footerHeight = 0;
    if (document.getElementById('navbar') != null)
        navbarHeight = document.getElementById('navbar').offsetHeight;
    if (document.getElementById('footer') != null)
        footerHeight = document.getElementById('footer').offsetHeight;
    document.getElementById('mainContainer').style.height = (window.innerHeight - navbarHeight - footerHeight - 50) + 'px';
}