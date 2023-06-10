"use strict";

// Get the canvas element
const lineChartCanvas = document.getElementById("myChart");

// Generate hourly labels for the past 24 hours in 24-hour format
const labels = [];
const currentDate = new Date();
for (let i = 23; i >= 0; i--) {
  const hour = (currentDate.getHours() - i + 24) % 24; // Ensure the hour is within the 24-hour range
  labels.push(`${hour}:00`);
}

// Generate random portfolio values for the past 24 hours with reduced aggressiveness
const data = [];
let previousValue = Math.floor(Math.random() * 10000) + 5000; // Initial random value between 5000 and 15000
for (let i = 0; i < 24; i++) {
  const randomOffset = Math.random() * 1000 - 500; // Random offset between -500 and 500
  const value = previousValue + randomOffset;
  data.push(value);
  previousValue = value;
}

// Create the chart
const lineChart = new Chart(lineChartCanvas, {
  type: "line",
  data: {
    labels: labels,
    datasets: [
      {
        label: "Portfolio Value",
        data: data,
        borderColor: "rgba(75, 192, 192, 1)",
        backgroundColor: "rgba(75, 192, 192, 0.2)",
        tension: 0.3, // Reduced tension for smoother curves
      },
    ],
  },
  options: {
    responsive: true,
    scales: {
      y: {
        beginAtZero: false,
      },
    },
  },
});
