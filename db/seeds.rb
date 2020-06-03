# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Creating grades
puts "Deleting all time_slots"
TimeSlot.delete_all
puts "Deleting all lessons"
Lesson.delete_all
puts "Deleting all teachers"
Teacher.delete_all
puts "Deleting all students"
Student.delete_all
puts "Deleting all users"
User.delete_all
puts "Deleting all grades"
Grade.delete_all

puts "Creating grades"

grade = Grade.create(name: "7a")

puts "#{grade.name} was created"


#Creating Users:

puts "Creating users"
# student user
student_user = User.create(email: "student1@flextables.de", password: 123456, first_name: "John", last_name: "Whiley")

#Mandetory teachers users
math_teacher_user = User.create(email: "mathteacher@flextables.de", password: 123456, first_name: "Malben", last_name: "Franco")
history_teacher_user = User.create(email: "historyteacher@flextables.de", password: 123456, first_name: "Jeremy", last_name: "Crane")
german_teacher_user = User.create(email: "germanteacher@flextables.de", password: 123456, first_name: "Wilhelm", last_name: "Gries")
ethics_teacher_user = User.create(email: "ethicsteacher@flextables.de", password: 123456, first_name: "Paul", last_name: "Klen")
english_teacher_user = User.create(email: "englishteacher@flextables.de", password: 123456, first_name: "Jousef", last_name: "Rahbani")

#Flex teachers users
sports_teacher_user = User.create(email: "sportsteacher@flextables.de", password: 123456, first_name: "Xin", last_name: "Wunhan")
painting_teacher_user = User.create(email: "paintingteacher@flextables.de", password: 123456, first_name: "Alejandro", last_name: "Sanchez")
it_teacher_user = User.create(email: "itteacher@flextables.de", password: 123456, first_name: "Barack", last_name: "Simpson")
biology_teacher_user = User.create(email: "biologyteacher@flextables.de", password: 123456, first_name: "Stefan", last_name: "Zelt")
apcalc_teacher_user = User.create(email: "apcalcteacher@flextables.de", password: 123456, first_name: "Mayar", last_name: "Malik")

#creating students

puts "Creating students"

student = Student.new
student.user = student_user
student.grade = grade
student.save!

puts "#{student.user.first_name} was made a student"

#creating teachers

puts "Creating teachers"

#creating mandetory teachers

math_teacher = Teacher.new
math_teacher.user = math_teacher_user
math_teacher.save

history_teacher = Teacher.new
history_teacher.user = history_teacher_user
history_teacher.save

german_teacher = Teacher.new
german_teacher.user = german_teacher_user
german_teacher.save

ethics_teacher = Teacher.new
ethics_teacher.user = ethics_teacher_user
ethics_teacher.save

english_teacher = Teacher.new
english_teacher.user = english_teacher_user
english_teacher.save

#creating flex teacher

sports_teacher = Teacher.new
sports_teacher.user = sports_teacher_user
sports_teacher.save

painting_teacher = Teacher.new
painting_teacher.user = painting_teacher_user
painting_teacher.save

it_teacher = Teacher.new
it_teacher.user = it_teacher_user
it_teacher.save

biology_teacher = Teacher.new
biology_teacher.user = biology_teacher_user
biology_teacher.save

apcalc_teacher = Teacher.new
apcalc_teacher.user = apcalc_teacher_user
apcalc_teacher.save

puts "Teachers were assigned"

#creating lessons


puts "Creating lessons"

#creating mandetory classes

math = Lesson.new(title: "Math", room: "H2", capacity: 20, lesson_type: "Mandetory", weekly_periods: ["1", "15", "18"])
math.grade = grade
math.teacher = math_teacher
math.save

history = Lesson.new(title: "History", room: "H1", capacity: 20, lesson_type: "Mandetory", weekly_periods: ["3", "9"])
history.grade = grade
history.teacher = history_teacher
history.save

german = Lesson.new(title: "German", room: "M7", capacity: 20, lesson_type: "Mandetory", weekly_periods: ["5", "11", "17"])
german.grade = grade
german.teacher = german_teacher
german.save

ethics = Lesson.new(title: "Ethics", room: "M7", capacity: 20, lesson_type: "Mandetory", weekly_periods: ["6", "20"])
ethics.grade = grade
ethics.teacher = ethics_teacher
ethics.save

english = Lesson.new(title: "English", room: "M13", capacity: 20, lesson_type: "Mandetory", weekly_periods: ["8", "14"])
english.grade = grade
english.teacher = english_teacher
english.save
puts "All Mandetory lessons created"

#creating flex classes

sports = Lesson.new(title: "Sports", room: "G1", capacity: 12, lesson_type: "Flex", weekly_periods: ["2", "7", "12", "13", "19"])
sports.grade = grade
sports.teacher = sports_teacher
sports.save

painting = Lesson.new(title: "Painting", room: "A1", capacity: 10, lesson_type: "Flex", weekly_periods: ["2", "4", "10", "13", "16"])
painting.grade = grade
painting.teacher = painting_teacher
painting.save

it = Lesson.new(title: "IT", room: "C1", capacity: 13, lesson_type: "Flex", weekly_periods: ["4", "7", "12", "16", "19"])
it.grade = grade
it.teacher = it_teacher
it.save

biology = Lesson.new(title: "Biology", room: "M7", capacity: 10, lesson_type: "Flex", weekly_periods: ["2", "7", "10", "13", "19"])
biology.grade = grade
biology.teacher = biology_teacher
biology.save

apcalc = Lesson.new(title: "AP-Calc.", room: "M13", capacity: 10, lesson_type: "Flex", weekly_periods: ["4", "10", "12", "16"])
apcalc.grade = grade
apcalc.teacher = apcalc_teacher
apcalc.save

puts "All Flex lessons created"


#creating time_slots

("1".."20").each do |weekly_period|
  lessons = Lesson.all
  time_slot = TimeSlot.new
  time_slot.student = student
  time_slot.weekly_period = weekly_period
  lessons.each do |lesson|
    if lesson.weekly_periods.include?(weekly_period) && lesson.lesson_type == "Mandetory"
      time_slot.lesson = lesson
    end
  time_slot.save
  end
end




