var productSection = document.querySelector(".product-section");
var productSectionSapChieu = document.querySelector(".product-section-sapchieu");
var productSectionDacBiet = document.querySelector(".product-section-dacbiet");
var sapchieu = document.querySelector("#sapchieu");
var dangchieu = document.querySelector("#dangchieu");
var dacbiet = document.querySelector("#dacbiet");

sapchieu.addEventListener('click',function(){
    productSectionDacBiet.classList.remove("openMovie");
    productSection.classList.remove("openMovie");
    productSectionSapChieu.classList.remove("closeMovie");
    productSectionSapChieu.classList.add("openMovie");
    productSection.classList.add("closeMovie");
    productSectionDacBiet.classList.add("closeMovie");
    sapchieu.setAttribute("class", "nav-link active");
    dangchieu.setAttribute("class", "nav-link");
    dacbiet.setAttribute("class", "nav-link");
})

dangchieu.addEventListener('click',function(){
    productSectionSapChieu.classList.remove("openMovie");
    productSectionDacBiet.classList.remove("openMovie");
    productSection.classList.remove("closeMovie");
    productSection.classList.add("openMovie");
    productSectionSapChieu.classList.add("closeMovie");
    productSectionDacBiet.classList.add("closeMovie");
    dangchieu.setAttribute("class", "nav-link active");
    sapchieu.setAttribute("class", "nav-link");
    dacbiet.setAttribute("class", "nav-link");
})

dacbiet.addEventListener('click',function(){
    productSection.classList.remove("openMovie");
    productSectionSapChieu.classList.remove("openMovie");
    productSectionDacBiet.classList.remove("closeMovie");
    productSectionDacBiet.classList.add("openMovie");
    productSection.classList.add("closeMovie");
    productSectionSapChieu.classList.add("closeMovie");
    dacbiet.setAttribute("class", "nav-link active");
    dangchieu.setAttribute("class", "nav-link");
    sapchieu.setAttribute("class", "nav-link");
})






