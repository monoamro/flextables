// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "period" ]


  fillRestOfSchedule() {
    this.state.freeTimeSlots.forEach((freeSlot) => {
      freeSlot.innerText = "Add a lesson!"
      freeSlot.classList.add('free-slot')
    })
  }

  fillScheduleWithLessons() {
    fetch('/', { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        this.state.freeTimeSlots = this.periodTargets
        data.time_slots.forEach((timeSlot) => {
          const lesson = data.lessons.find(lesson => lesson.id === timeSlot.lesson_id)
          const targetCell = this.periodTargets[timeSlot.weekly_period - 1]
          targetCell.innerText = lesson.title
          const index = this.state.freeTimeSlots.indexOf(targetCell)
          this.state.freeTimeSlots.splice(index, 1)
        })
        this.fillRestOfSchedule()
      })
  }

  connect() {
    this.state = {
      freeTimeSlots: []
    }
    this.fillScheduleWithLessons()
  }
}
