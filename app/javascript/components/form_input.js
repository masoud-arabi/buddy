const removeIsValid = () => {

  const editElementsInput = document.querySelectorAll("input");
  for (var i = 3; i < 13; i++) {
    editElementsInput[i].classList.remove("is-valid");
  }

  const editElementsSelect = document.querySelectorAll("select");
  for (var i = 0; i < 2; i++) {
    editElementsSelect[i].classList.remove("is-valid");
  }
};

export { removeIsValid };
