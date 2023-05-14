"strict mode"

/**
 * Add sticky header when scrolling down the page
 */
function addStickyHeader() {
  window.addEventListener("scroll", function () {
    let header = document.querySelector("header");
    header.classList.toggle("sticky", window.scrollY > 0);
  });
}
