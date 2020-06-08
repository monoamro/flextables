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
  student_user_2 = User.create(email: "student2@flextables.de", password: 123456, first_name: "Sarah", last_name: "McPhearson")
  student_user_3 = User.create(email: "student3@flextables.de", password: 123456, first_name: "Maria", last_name: "Rossi")
  student_user_4 = User.create(email: "student4@flextables.de", password: 123456, first_name: "Benjamin", last_name: "Schmidt")
  student_user_5 = User.create(email: "student5@flextables.de", password: 123456, first_name: "Erich", last_name: "Meyer")
  student_user_6 = User.create(email: "student6@flextables.de", password: 123456, first_name: "Jakob", last_name: "Schult")
  student_user_7 = User.create(email: "student7@flextables.de", password: 123456, first_name: "Julia", last_name: "Wagner")
  student_user_8 = User.create(email: "student8@flextables.de", password: 123456, first_name: "Martin", last_name: "Fischer")
  student_user_9 = User.create(email: "student9@flextables.de", password: 123456, first_name: "Michael", last_name: "Schneider")
 student_user_10 = User.create(email: "student10@flextables.de", password: 123456, first_name: "Andreas", last_name: "Wolf")
 student_user_11 = User.create(email: "student11@flextables.de", password: 123456, first_name: "Martina", last_name: "Lange")
 student_user_12 = User.create(email: "student12@flextables.de", password: 123456, first_name: "Thomas", last_name: "McMillan")
 student_user_13 = User.create(email: "student13@flextables.de", password: 123456, first_name: "Johannes", last_name: "Kötter")
 student_user_14 = User.create(email: "student14@flextables.de", password: 123456, first_name: "Esra", last_name: "Akay")
 student_user_15 = User.create(email: "student15@flextables.de", password: 123456, first_name: "Timur", last_name: "Gencer")
 student_user_16 = User.create(email: "student16@flextables.de", password: 123456, first_name: "Nikos", last_name: "Tsoukalos")
 student_user_17 = User.create(email: "student17@flextables.de", password: 123456, first_name: "Jann", last_name: "Torgerson")
 student_user_18 = User.create(email: "student18@flextables.de", password: 123456, first_name: "Bartolo", last_name: "Perez")
 student_user_19 = User.create(email: "student19@flextables.de", password: 123456, first_name: "Corina", last_name: "Braatz")
 student_user_20 = User.create(email: "student20@flextables.de", password: 123456, first_name: "Anna", last_name: "Mayerhofer")
 student_user_21 = User.create(email: "student21@flextables.de", password: 123456, first_name: "Elisabeth", last_name: "Busche")
 student_user_22 = User.create(email: "student22@flextables.de", password: 123456, first_name: "Julian", last_name: "Laub")
 student_user_23 = User.create(email: "student23@flextables.de", password: 123456, first_name: "Arda", last_name: "Kalin")
 student_user_24 = User.create(email: "student24@flextables.de", password: 123456, first_name: "Laura", last_name: "Kirschholtes")
 student_user_25 = User.create(email: "student25@flextables.de", password: 123456, first_name: "Francesco", last_name: "Filingeri")
 student_user_26 = User.create(email: "student26@flextables.de", password: 123456, first_name: "Tim", last_name: "Cichoracki")
 student_user_27 = User.create(email: "student27@flextables.de", password: 123456, first_name: "Sarah", last_name: "Bieganski")
 student_user_28 = User.create(email: "student28@flextables.de", password: 123456, first_name: "Omar", last_name: "Alomar")
 student_user_29 = User.create(email: "student29@flextables.de", password: 123456, first_name: "Celine", last_name: "Aarns")
 student_user_30 = User.create(email: "student30@flextables.de", password: 123456, first_name: "Gözde", last_name: "Caglar")

student_users = [student_user, student_user_2, student_user_3, student_user_4, student_user_5, student_user_6, student_user_7, student_user_8, student_user_9, student_user_10, student_user_11, student_user_12, student_user_13, student_user_14, student_user_15, student_user_16, student_user_17, student_user_18, student_user_19, student_user_20, student_user_21, student_user_22, student_user_23, student_user_24, student_user_25, student_user_26, student_user_27, student_user_28, student_user_29, student_user_30]


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

students = student_users.map do |user|
  student = Student.new
  student.user = user
  student.grade = grade
  student.save!
end

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


math = Lesson.new(title: "Math", room: "H2", capacity: 20, lesson_type: "Mandetory", weekly_periods: ["1", "14", "10"], details: "Pythagorean theorem, In a right angled triangle, the square of the hypotenuse is equal to
the sum of the squares of the other two sides.", homework: "Math Workbook 9, Page 23,Exercise 2, 3, 4 and 5")

math.grade = grade
math.teacher = math_teacher
math.save



history = Lesson.new(title: "History", room: "H1", capacity: 20, lesson_type: "Mandetory", weekly_periods: ["11", "3"], details: "Napoleon the III (Charles-Louis Napoléon Bonaparte; 20 April 1808 – 9 January 1873)", homework: "Please read History alive, Page 112-115")

history.grade = grade
history.teacher = history_teacher
history.save


german = Lesson.new(title: "German", room: "M7", capacity: 20, lesson_type: "Mandetory", weekly_periods: ["2", "13", "9"], details: "Adjektivdeklination Typ2 Typ3, Adjektivgruppen", homework: "Deutsch als Fremdsprache 3, Seite 47, Aufgabe 1-3")


german.grade = grade
german.teacher = german_teacher
german.save



ethics = Lesson.new(title: "Ethics", room: "M7", capacity: 20, lesson_type: "Mandetory", weekly_periods: ["7", "20"], details: "Anarchy and Freedom in changing times", homework: "Read and fill out task sheet of this lesson")


ethics.grade = grade
ethics.teacher = ethics_teacher
ethics.save


english = Lesson.new(title: "English", room: "M13", capacity: 20, lesson_type: "Mandetory", weekly_periods: ["17", "9"], details: "Irregular Past Simple", homework: "Irregular Past Simple, Part 2, Execsise 1, 2 and 3")


english.grade = grade
english.teacher = english_teacher
english.save
puts "All Mandetory lessons created"

#creating flex classes



sports = Lesson.new(title: "Sports", room: "G1", capacity: 12, lesson_type: "Flex", weekly_periods: ["6", "12", "18", "4", "15"], details: "Soccer, Volleyball", homework: "PE_Theoretics: Muscles of the Back")

sports.grade = grade
sports.teacher = sports_teacher
sports.save


painting = Lesson.new(title: "Painting", room: "A1", capacity: 10, lesson_type: "Flex", weekly_periods: ["6", "16", "8", "4", "19"], details: "Impressionism", homework: "Paint the view from your window at home in an impressionistic style")


painting.grade = grade
painting.teacher = painting_teacher
painting.save



it = Lesson.new(title: "IT", room: "C1", capacity: 13, lesson_type: "Flex", weekly_periods: ["16", "12", "18", "19", "15"], details: "Introduction to Layers in a Network and Routing", homework: "IT-today, Page 33 and 34")


it.grade = grade
it.teacher = it_teacher
it.save



biology = Lesson.new(title: "Biology", room: "M7", capacity: 10, lesson_type: "Flex", weekly_periods: ["6", "12", "8", "4", "15"], details: "Frog´s anatomy", homework: "Read pages 168 to 171, then excersises 1 and 2 on page 171")


biology.grade = grade
biology.teacher = biology_teacher
biology.save



apcalc = Lesson.new(title: "AP-Calc.", room: "M13", capacity: 10, lesson_type: "Flex", weekly_periods: ["16", "8", "18", "19"], details: "Calculus of variations", homework: "Excersises 35-37 in the book")

apcalc.grade = grade
apcalc.teacher = apcalc_teacher
apcalc.save

puts "All Flex lessons created"


#creating time_slots
students.each do |student|

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
end



