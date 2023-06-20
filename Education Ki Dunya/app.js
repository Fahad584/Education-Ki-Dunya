const bar = document.querySelector("#bar");
const menu = document.querySelector(".menu");


bar.addEventListener("click", function () {
  // console.log("You Clicked me");
  menu.classList.toggle("menuHide");
  bar.classList.toggle("barRotate");
});

const gridbtn1 = document.getElementById("gridbtn1");
const gridbtn2 = document.getElementById("gridbtn2");
const gridImage = document.getElementById("gridImage");

let imageCount = 1;
let imagePath;

gridbtn2.addEventListener("click", () => {
  imageCount++;
  console.log("hello");
  if (imageCount <= 5) {
    imagePath = "./pictures/transition" + imageCount + ".jpg";
    console.log(imagePath);
    gridImage.src = imagePath;
  }
  if (imageCount > 5) {
    imageCount = 1;
    imagePath = "./pictures/transition" + imageCount + ".jpg";
    console.log(imagePath);
    gridImage.src = imagePath;
  }
});

gridbtn1.addEventListener("click", () => {
  imageCount--;
  if (imageCount >= 1) {
    imagePath = "./pictures/transition" + imageCount + ".jpg";
    console.log(imagePath);
    gridImage.src = imagePath;
  }
  if (imageCount < 1) {
    imageCount = 5;
    imagePath = "./pictures/transition" + imageCount + ".jpg";
    console.log(imagePath);
    gridImage.src = imagePath;
  }
});

