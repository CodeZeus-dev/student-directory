# Putting all student names into an array calles students
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked With of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
# Printing the list of all academy students
puts "The students of Villains Academy"
puts "-------------"
students.each do |student|
  puts student
end
# Print the total number of students enrolled
puts "Overall, we have #{students.count} great students"
