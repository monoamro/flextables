const toggleAttendance = () => {
  const button = document.querySelector(".show-attendance")
  const attendance = document.querySelector(".student-list")
  button.addEventListener("click", (event) => {
    console.log(event)
    attendance.classList.toggle("attendance_hidden");
  });
};

export default toggleAttendance;
