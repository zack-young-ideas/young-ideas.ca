const hamburger = document.getElementById('hamburger-icon');
const sidebar = document.getElementById('sidebar-nav');

hamburger.addEventListener('click', (event) => {
  event.preventDefault();
  hamburger.classList.toggle('change');
  if (sidebar.style.width === '40%') {
    sidebar.style.width = '0';
  } else {
    sidebar.style.width = '40%';
  }
});
