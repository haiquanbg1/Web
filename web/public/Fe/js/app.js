var productSection = document.querySelector("#phimdangchieu");
var productSectionSapChieu = document.querySelector("#phimsapchieu");
var productSectionDacBiet = document.querySelector("#phimdacbiet");
var sapchieu = document.querySelector("#sapchieu");
var dangchieu = document.querySelector("#dangchieu");
var dacbiet = document.querySelector("#dacbiet");

var items =  document.querySelectorAll(".item");

items.forEach(item => {
    item.addEventListener("click", function() {
        productSection.setAttribute("style", "display:none;");
        productSectionSapChieu.setAttribute("style", "display:none;");
        productSectionDacBiet.setAttribute("style", "display:none;");
        switch (item.id) {
            case 'sapchieu':
                productSectionSapChieu.setAttribute("style", "display:block;");
                sapchieu.setAttribute("class", "nav-link active");
                dangchieu.setAttribute("class", "nav-link");
                dacbiet.setAttribute("class", "nav-link");
                break;
            case 'dangchieu':
                productSection.setAttribute("style", "display:block;");
                sapchieu.setAttribute("class", "nav-link");
                dangchieu.setAttribute("class", "nav-link active");
                dacbiet.setAttribute("class", "nav-link");
                break;
            case 'dacbiet':
                productSectionDacBiet.setAttribute("style", "display:block;");
                sapchieu.setAttribute("class", "nav-link");
                dangchieu.setAttribute("class", "nav-link");
                dacbiet.setAttribute("class", "nav-link active");
                break;
            default:
                break;
        }
    });
});




var ngay1 = document.querySelector("#ngay1");
var ngay2 = document.querySelector("#ngay2");
var ngay3 = document.querySelector("#ngay3");
var ngay4 = document.querySelector("#ngay4");
var ngay5 = document.querySelector("#ngay5");
var ngay6 = document.querySelector("#ngay6");
var ngay7 = document.querySelector("#ngay7");
var giongay1 = document.querySelector("#gio1");
var giongay2 = document.querySelector("#gio2");
var giongay3 = document.querySelector("#gio3");
var giongay4 = document.querySelector("#gio4");
var giongay5 = document.querySelector("#gio5");
var giongay6 = document.querySelector("#gio6");
var giongay7 = document.querySelector("#gio7");

var days = document.querySelectorAll(".day");

days.forEach(days => {
    days.addEventListener("click", function() {
        giongay1.setAttribute("style","display:none;");
        giongay2.setAttribute("style","display:none;");
        giongay3.setAttribute("style","display:none;");
        giongay4.setAttribute("style","display:none;");
        giongay5.setAttribute("style","display:none;");
        giongay6.setAttribute("style","display:none;");
        giongay7.setAttribute("style","display:none;");
        switch (days.id) {
            case 'ngay1':
                giongay1.setAttribute("style","display:block;");
                ngay1.setAttribute("class", "nav-link active");
                ngay2.setAttribute("class", "nav-link");
                ngay3.setAttribute("class", "nav-link");
                ngay4.setAttribute("class", "nav-link");
                ngay5.setAttribute("class", "nav-link");
                ngay6.setAttribute("class", "nav-link");
                ngay7.setAttribute("class", "nav-link");
                break;
            case 'ngay2':
                giongay2.setAttribute("style","display:block;");
                ngay2.setAttribute("class", "nav-link active");
                ngay1.setAttribute("class", "nav-link");
                ngay3.setAttribute("class", "nav-link");
                ngay4.setAttribute("class", "nav-link");
                ngay5.setAttribute("class", "nav-link");
                ngay6.setAttribute("class", "nav-link");
                ngay7.setAttribute("class", "nav-link");
                break;
            case 'ngay3':
                giongay3.setAttribute("style","display:block;");
                ngay3.setAttribute("class", "nav-link active");
                ngay2.setAttribute("class", "nav-link");
                ngay1.setAttribute("class", "nav-link");
                ngay4.setAttribute("class", "nav-link");
                ngay5.setAttribute("class", "nav-link");
                ngay6.setAttribute("class", "nav-link");
                ngay7.setAttribute("class", "nav-link");
                break;
            case 'ngay4':
                giongay4.setAttribute("style","display:block;");
                ngay4.setAttribute("class", "nav-link active");
                ngay2.setAttribute("class", "nav-link");
                ngay3.setAttribute("class", "nav-link");
                ngay1.setAttribute("class", "nav-link");
                ngay5.setAttribute("class", "nav-link");
                ngay6.setAttribute("class", "nav-link");
                ngay7.setAttribute("class", "nav-link");
                break;
            case 'ngay5':
                giongay5.setAttribute("style","display:block;");
                ngay5.setAttribute("class", "nav-link active");
                ngay2.setAttribute("class", "nav-link");
                ngay3.setAttribute("class", "nav-link");
                ngay1.setAttribute("class", "nav-link");
                ngay4.setAttribute("class", "nav-link");
                ngay6.setAttribute("class", "nav-link");
                ngay7.setAttribute("class", "nav-link");
                break;
            case 'ngay6':
                giongay6.setAttribute("style","display:block;");
                ngay6.setAttribute("class", "nav-link active");
                ngay2.setAttribute("class", "nav-link");
                ngay3.setAttribute("class", "nav-link");
                ngay1.setAttribute("class", "nav-link");
                ngay5.setAttribute("class", "nav-link");
                ngay4.setAttribute("class", "nav-link");
                ngay7.setAttribute("class", "nav-link");
                break;
            case 'ngay7':
                giongay7.setAttribute("style","display:block;");
                ngay7.setAttribute("class", "nav-link active");
                ngay2.setAttribute("class", "nav-link");
                ngay3.setAttribute("class", "nav-link");
                ngay1.setAttribute("class", "nav-link");
                ngay5.setAttribute("class", "nav-link");
                ngay6.setAttribute("class", "nav-link");
                ngay4.setAttribute("class", "nav-link");
                break;
            default:
                break;
        }
    });
});





