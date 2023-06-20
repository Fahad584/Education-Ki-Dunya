const sidebar = document.querySelector("aside");

const bars = document.querySelector("#bars");

const section = document.querySelector("section");

bars.addEventListener("click", () => {
    section.classList.toggle("bar-max");
    sidebar.classList.toggle("hide-sidebar");
})