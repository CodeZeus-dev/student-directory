# Putting all student names into an array calles students
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
{name: "Darth Vader", cohort: :november},
{name: "Nurse Ratched", cohort: :november},
{name: "Michael Corleone", cohort: :november},
{name: "Alex DeLarge", cohort: :november},
{name: "The Wicked Witch of the West", cohort: :november},
{name: "Terminator", cohort: :november},
{name: "Freddy Krueger", cohort: :november},
{name: "The Joker", cohort: :november},
{name: "Joffrey Baratheon", cohort: :november},
{name: "Norman Bates", cohort: :november}
]
# Printing the list of all academy students
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print(names)
  names.each do |name|
  puts "#{name[:name]} (#{name[:cohort]} cohort)"
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
