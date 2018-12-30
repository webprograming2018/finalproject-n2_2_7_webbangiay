var imgPro = document.querySelector(".img-big-wrap img");
var listImg = document.querySelectorAll('.img-small-wrap img');

listImg.forEach(imgs => imgs.addEventListener('click',function(elem) {
    imgPro.src = this.src;
}))