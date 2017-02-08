console.log("This script is running!");




function changeFontColor(event) {
  console.log("click happened");
  console.log(event);
  // var text = document.getElementsByTagName("div");
  event.target.style.color = "blue";
};

var text = document.getElementById("fun-website");
text.addEventListener("click", changeFontColor);

var background = document.getElementById("bkgd");
background.style.backgroundColor = "red";

var list = document.getElementById("list")
list.style.fontSize = "xx-large";