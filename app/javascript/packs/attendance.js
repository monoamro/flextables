

const attendance = () => {
  const names = document.querySelectorAll(".student-attendance")
  names.forEach((name) => {
    name.addEventListener("click", (event) => {
      name.classList.toggle("crossed");
    });
  });
};

export default attendance;
