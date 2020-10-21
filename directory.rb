# # Putting all student names into an array calles students
# students = [
#   {name: "Dr. Hannibal Lecter", cohort: :november},
# {name: "Darth Vader", cohort: :november},
# {name: "Nurse Ratched", cohort: :november},
# {name: "Michael Corleone", cohort: :november},
# {name: "Alex DeLarge", cohort: :november},
# {name: "The Wicked Witch of the West", cohort: :november},
# {name: "Terminator", cohort: :november},
# {name: "Freddy Krueger", cohort: :november},
# {name: "The Joker", cohort: :november},
# {name: "Joffrey Baratheon", cohort: :november},
# {name: "Norman Bates", cohort: :november}
# ]
@students = [] # an empty array accessible to all methods

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  @students
end
# Printing the list of all academy students
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end
def print_students_list
  @students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
def print_footer
  # Print the total number of students enrolled
  puts "Overall, we have #{@students.count} great students"
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    # input the students
    input_students
  when "2"
    # show the students
    show_students
  when "9"
    exit # termination of the program
  else
    puts "I don't know what you meant, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

interactive_menu
