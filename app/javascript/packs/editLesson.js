const editLesson = () => {
  const form = document.querySelector('form');
  var details = document.querySelectorAll('.lesson-details');
  var updated_details = document.querySelectorAll('.form-control');
  form.addEventListener("submit", (event) => {
    console.log(event);
    details[0].innerText = updated_details[0].value;
    details[1].innerText = updated_details[1].value;
  });
};

export default editLesson;
