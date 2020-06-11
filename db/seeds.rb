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
math_teacher_user = User.create(email: "mathteacher@flextables.de", password: 123456, first_name: "Nima", last_name: "Hassanabadi")
history_teacher_user = User.create(email: "historyteacher@flextables.de", password: 123456, first_name: "Jeremy", last_name: "Crane")
english_teacher_user = User.create(email: "englishteacher@flextables.de", password: 123456, first_name: "Jousef", last_name: "Rahbani")

#Flex teachers users
biology_teacher_user = User.create(email: "biologyteacher@flextables.de", password: 123456, first_name: "Stefan", last_name: "Zelt")

#creating students

puts "Creating students"

students = student_users.map do |user|
  student = Student.new
  student.user = user
  student.grade = grade
  student.save!
  student
end

puts "#{students.first.user.first_name} was made a student"

#creating teachers

puts "Creating teachers"

#creating mandetory teachers

math_teacher = Teacher.new
math_teacher.user = math_teacher_user
math_teacher.save

history_teacher = Teacher.new
history_teacher.user = history_teacher_user
history_teacher.save

english_teacher = Teacher.new
english_teacher.user = english_teacher_user
english_teacher.save

#creating flex teacher
biology_teacher = Teacher.new
biology_teacher.user = biology_teacher_user
biology_teacher.save

puts "Teachers were assigned"

#creating lessons


puts "Creating lessons"

#creating mandetory classes


math = Lesson.new(title: "Math", room: "H2", capacity: 30, lesson_type: "Mandetory", weekly_periods: ["1", "14", "10"], details: "Join the class for an in-depth look at the fundamentals of mathematics including elementary multiplication, division, addition, subtraction and more. Once completed, each student will have a thorough understanding of core mathematical solutions.", homework: "Each student will be expected to complete a multiplication chart before next week, Math Workbook, Page 23, Exercise 2, 3, 4 and 5")

math.grade = grade
math.teacher = math_teacher
math.save



history = Lesson.new(title: "History", room: "H1", capacity: 30, lesson_type: "Mandetory", weekly_periods: ["11", "3"], details: "Students will be engaged in conversation, as well as lectures, about how our world became what it is today. The course will take a look at the brief history of each country, wars and essential moments throughout history that forever molded our government, freedoms and liberties.", homework: "Each student will complete a worksheet that identifies important leaders throughout history and what type of governmental power they demonstrated.")

history.grade = grade
history.teacher = history_teacher
history.save


german = Lesson.new(title: "German", room: "M7", capacity: 30, lesson_type: "Mandetory", weekly_periods: ["2", "13", "5"], details: "Class will start to learn and understand the country's native language by conjugating verbs, learning proper use of nouns and pronouns and also learning how to pronounce each word. This class will be a beginner's course for anyone looking to take a nice vacation to Berlin by learning simple, conversational German.", homework: "Write a complete paragraph properly in passive that describes a summercamp experience.")


german.grade = grade
german.teacher = history_teacher
german.save



ethics = Lesson.new(title: "Ethics", room: "M7", capacity: 30, lesson_type: "Mandetory", weekly_periods: ["7", "20"], details: "This course is designed to give an inside look at the history of a person's 'moral compass' as well as religions by geographical location. Ethics helps students by learning the fundamentals of religious influence and how it affects society's legal system.", homework: "Each student will pick a period of historical conflict and demonstrate how both sides' ethics were involved in deciding resolutions.")


ethics.grade = grade
ethics.teacher = english_teacher
ethics.save


english = Lesson.new(title: "English", room: "M13", capacity: 30, lesson_type: "Mandetory", weekly_periods: ["17", "9"], details: "Dive back into the basics of the English language by learning compound words, the difference between adjectives and adverbs, verb conjugation and proper sentence structure. After completing this class, students will be able to proof-read any assignment without assistance from the instructor.", homework: "Each student will be given a short story with 25 grammatical errors. Students must identify each error and properly state how to correct it.")


english.grade = grade
english.teacher = english_teacher
english.save
puts "All Mandetory lessons created"

#creating flex classes



sports = Lesson.new(title: "Sports", room: "G1", capacity: 12, lesson_type: "Flex", weekly_periods: ["6", "12", "18", "4", "15"], details: "This course is a very detailed account of all rules and regulations involving popular sports from around the world! The class will also take a look at important historical players from each sport that helped catapult the sport into mainstream society and pop culture.", homework: "Each student will write an essay describing the difference between American soccer and American football.")

sports.grade = grade
sports.teacher = history_teacher
sports.save


painting = Lesson.new(title: "Art", room: "A1", capacity: 10, lesson_type: "Flex", weekly_periods: ["6", "16", "8", "4", "19"], details: "Art: This course takes a look into the different eras of Art throughout history, important artists from each era and basic understanding of techniques used by each artist. After completion of the course, students will be expected to identify paintings by their date based on details from each painting.", homework: "Students will pick an artist and recreate an important work of theirs in an updated format such as webpages, videos, internet graphics, etc.")


painting.grade = grade
painting.teacher = english_teacher
painting.save



it = Lesson.new(title: "IT", room: "C1", capacity: 13, lesson_type: "Flex", weekly_periods: ["16", "12", "18", "19", "15"], details: "This course highlights the technology behind 'information technology' or 'IT.'' Students will become familiar with networking, hardware and software and solutions for technical difficulties. The course is designed for those with special interests in Computer Science.", homework: "Each student must write a short essay on the difference between storage and memory. They will be expected to be able to explain this using everyday terms.")


it.grade = grade
it.teacher = math_teacher
it.save



biology = Lesson.new(title: "Biology", room: "M7", capacity: 10, lesson_type: "Flex", weekly_periods: ["6", "12", "4", "15"], details: "Biology: Students will 'come alive' with the study of life! This course takes a microscopic look at all forms of life from a cellular level. Students will be able to properly identify parts of a cell, explain the difference between DNA and RNA and be able to understand how an ecosystem works.", homework: "Each student must explain to the instructor the difference between mitosis and meiosis and identify the different stages of each.")


biology.grade = grade
biology.teacher = biology_teacher
biology.save



apcalc = Lesson.new(title: "AP-Calc.", room: "M13", capacity: 10, lesson_type: "Flex", weekly_periods: ["16", "8", "18", "19"], details: "Students will be given an exciting look into the world of functions and patterns in numerical values. Students will be educated on how to identify these functions and how to quickly apply these in other courses such as physics, engineering, etc.", homework: "Within the first week, each student will write a short essay on the similarities and differences between integral calculus and differential calculus.")

apcalc.grade = grade
apcalc.teacher = biology_teacher
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



