'use strict';

//SHOW NOTIFICATION MENU ON BUTTON CLICK
const notificationBtn = document.querySelector('.notification-btn');
const notificationBar = document.querySelector('.notification__sidebar');
// let timesClicked = 0;

// notificationBtn.addEventListener('click', function () {
//   timesClicked++;

//   if (timesClicked % 2 == 0) {
//     notificationBtn.classList.add('notification-btn-colored');
//     notificationBar.classList.remove('d-none');
//     notificationBar.classList.add('d-block');
//   } else {
//     notificationBtn.classList.remove('notification-btn-colored');
//     notificationBar.classList.add('d-none');
//     notificationBar.classList.remove('d-block');
//   }
// });

notificationBtn.addEventListener('click', function () {
  notificationBar.classList.remove('d-none');
  notificationBar.classList.add('d-block');
});

//CLOSE NOTIFICATION MENU ON BUTTON CLICK
const closeBtn = document.querySelector('.close-btn');

closeBtn.addEventListener('click', function () {
  notificationBar.classList.remove('d-block');
  notificationBar.classList.add('d-none');
});
