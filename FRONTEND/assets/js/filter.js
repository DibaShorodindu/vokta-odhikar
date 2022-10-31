'use strict';

// UPDATE CASE STATUS
let caseStatusFilter = document.getElementById('caseStatusFilter');
let caseStatusFilter01 = document.getElementById('caseStatusFilter01');
let caseStatusFilter02 = document.getElementById('caseStatusFilter02');
let caseStatusFilter03 = document.getElementById('caseStatusFilter03');

caseStatusFilter01.addEventListener('click', function () {
  caseStatusFilter.textContent = caseStatusFilter01.textContent;
});

caseStatusFilter02.addEventListener('click', function () {
  caseStatusFilter.textContent = caseStatusFilter02.textContent;
});

caseStatusFilter03.addEventListener('click', function () {
  caseStatusFilter.textContent = caseStatusFilter03.textContent;
});

let caseStatus = document.getElementById('caseStatus');
let caseStatus01 = document.getElementById('caseStatus01');
let caseStatus02 = document.getElementById('caseStatus02');
let caseStatus03 = document.getElementById('caseStatus03');

caseStatus01.addEventListener('click', function () {
  caseStatus.textContent = caseStatus01.textContent;
});

caseStatus02.addEventListener('click', function () {
  caseStatus.textContent = caseStatus02.textContent;
});

caseStatus03.addEventListener('click', function () {
  caseStatus.textContent = caseStatus03.textContent;
});
