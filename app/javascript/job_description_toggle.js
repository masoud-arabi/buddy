function toggleDescription(jobCard) {
  const jobDescrition = jobCard.parentNode.querySelector('.job-desc-container')
  if (jobDescrition.style.display === "none") {
    jobDescrition.style.display = "block";
  } else {
    jobDescrition.style.display = "none";
  }
}

window.toggleDescription = toggleDescription
