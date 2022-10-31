'use strict';

const labels = ['January', 'February', 'March', 'April', 'May', 'June'];

const data = {
  labels: [
    '12-06-2022',
    '13-06-2022',
    '14-06-2022',
    '15-06-2022',
    '16-06-2022',
    '17-06-2022',
  ],
  datasets: [
    {
      label: 'Number of cases filed',
      backgroundColor: 'rgba(75, 192, 192, 0.2)',
      borderColor: 'rgba(75, 192, 192, 1)',
      borderWidth: 2,
      data: [2, 12, 10, 12, 5, 13],
    },
  ],
};

const config = {
  type: 'bar',
  data: data,
  options: {},
};

const myChart = new Chart(document.getElementById('myChart'), config);
