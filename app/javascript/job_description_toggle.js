function toggleDescription(jobCard) {
  const jobDescrition = jobCard.parentNode.querySelector('.job-desc-container')
  if (jobDescrition.style.display === "none") {
    jobDescrition.style.display = "flex";
  } else {
    jobDescrition.style.display = "none";
  }
}

window.toggleDescription = toggleDescription
