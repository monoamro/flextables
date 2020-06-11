const toggleEditForm = () => {
  const button = document.querySelector(".edit-details-homework")
  const editForm = document.querySelector(".edit_form_hidden")
  button.addEventListener("click", (event) => {
    console.log(event)
    editForm.classList.toggle("edit_form_hidden");
  });
};

export default toggleEditForm;
