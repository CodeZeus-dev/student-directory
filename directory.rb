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
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(names)
  names.each do |name|
  puts name
  end
end
def print_footer(names)
  # Print the total number of students enrolled
  puts "Overall, we have #{names.count} great students"
end
# Nothing happens until we call the methods
print_header
print(students)
print_footer(students)
