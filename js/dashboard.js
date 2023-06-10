"strict mode";

// Get the canvas element
const lineChartCanvas = document.getElementById("myChart");

// Create the chart
const lineChart = new Chart(lineChartCanvas, {
  type: "line",
  data: {
    labels: ["January", "February", "March", "April", "May", "June"],
    datasets: [
      {
        label: "Example Line Chart",
        data: [10, 15, 7, 12, 8, 9],
        borderColor: "rgba(75, 192, 192, 1)",
        backgroundColor: "rgba(75, 192, 192, 0.2)",
        tension: 0.4,
      },
    ],
  },
  options: {
    responsive: true,
    scales: {
      y: {
        beginAtZero: true,
      },
    },
  },
});
