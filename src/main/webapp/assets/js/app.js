// create resume form
const resumeForm = document.querySelector(".create-resume form")
const resumeFormButton = document.getElementById('create-resume-form-btn')
const resumeFormSteps = document.querySelectorAll(".create-resume form .step")
const resumeFormStepsDots = document.querySelectorAll(".create-resume .steps-dots .dot")
let currentResumeFormStep = 0

resumeFormButton.addEventListener("click", e => {
  e.preventDefault()
  currentResumeFormStep++

  if ( currentResumeFormStep === 3 ) resumeFormButton.innerText = "Submit"
  if ( currentResumeFormStep === 4 ) return resumeForm.submit()

  resumeFormSteps.forEach(step => step.classList.remove("active"))
  resumeFormStepsDots.forEach(dot => dot.classList.remove("active"))
  resumeFormSteps[currentResumeFormStep].classList.add("active")
  resumeFormStepsDots[currentResumeFormStep].classList.add("active")
})