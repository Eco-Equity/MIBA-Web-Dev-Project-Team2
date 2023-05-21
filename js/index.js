"strict mode";

/**
 * Add sticky header when scrolling down the page
 */
// window.addEventListener("scroll", function () {
//   let header = document.querySelector("header");
//   header.classList.toggle("sticky", window.scrollY > 0);
// });

function update_pbar() {
  let winScroll = document.body.scrollTop || document.documentElement.scrollTop;
  let height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
  let scrolled = (winScroll / height) * 100;
  document.getElementById("progress-bar").style.width = scrolled + "%";
}
window.onscroll = function () {update_pbar();};