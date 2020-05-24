// create resume form
const resumeForm = document.querySelector(".create-resume form")
const resumeFormButton = document.getElementById('create-resume-form-btn')
const resumeFormSteps = document.querySelectorAll(".create-resume form .step")
const resumeFormStepsDots = document.querySelectorAll(".create-resume .steps-dots .dot")
const feedbackArea = document.getElementById("feedback-area")
let currentResumeFormStep = 0

resumeFormButton.addEventListener("click", e => {
  e.preventDefault()
  try {
    // required fields check
    let requiredFields = document.querySelectorAll(`.create-resume form .step:nth-child(${currentResumeFormStep + 1}) [required]`)
    requiredFields.forEach(field => {
      console.log(field)
      console.log(field.value.length)
      if( field.value.length < 4 ) {
        field.style.border = '1px solid #ef5350'
        const message = field.value.length === 0 ? "This field is required!" : "This field should be at least 4 characters length!"
        feedbackArea.innerHTML = message
        throw message
      }
      feedbackArea.innerText = ''
      field.style.border = '1px solid #8bc34a'
    })

    currentResumeFormStep++

    if ( currentResumeFormStep === 3 ) resumeFormButton.innerText = "Submit"

    if ( currentResumeFormStep === 4 ) return resumeForm.submit()

    resumeFormSteps.forEach(step => step.classList.remove("active"))
    resumeFormStepsDots.forEach(dot => dot.classList.remove("active"))
    resumeFormSteps[currentResumeFormStep].classList.add("active")
    resumeFormStepsDots[currentResumeFormStep].classList.add("active")
  } catch(err) {
    console.log(`Some error happened! `, err)
  }
})