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
require 'date'

class StudentDirectory

  def initialize
    @students = [] # an empty array accessible to all methods
    puts "Would you like to see the menu? [y/n]"
    choice = STDIN.gets.chomp
    while choice != 'y' && choice != 'n'
      puts "You could enter either y or n"
      choice = STDIN.gets.chomp
    end
    interactive_menu if choice == 'y'
  end

  def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    # get student name and cohort from Standard Input (user)
    name, cohort = user_input
    # while the name is not empty, repeat this code
    while !name.empty? do
      # check if cohort empty
      if cohort.empty?
        cohort = "undefined"
      end
      # add the student hash to the array
      @students << {name: name, cohort: cohort.to_sym}
      puts @students.count != 1 ? "\nNow we have #{@students.count} students" : "\nNow we have 1 student"
      # add another student
      name, cohort = user_input
    end
    # return the array of students
    @students
  end

  def user_input
    # get the first name
    puts "\nName: "
    name = STDIN.gets.chomp
    return if name.nil?
    # get the first cohort month
    puts "\nCohort: "
    cohort = STDIN.gets.chomp
    # check for spelling mistakes in user input
    while (!cohort.empty? && (Date::MONTHNAMES.compact.include? cohort.capitalize()) == false) do
      puts "Oops... it looks like you made a typo... Try again!"
      cohort = STDIN.gets.chomp
    end

    return name, cohort
  end

  def print_header
    puts "The students of Villains Academy"
    puts "-------------"
  end

  def print_footer
    # Print the total number of students enrolled
    puts "Overall, we have #{@students.count} great students"
  end

  def print_students_list
    cohort_list = []
    @students.map { |student| cohort_list << student[:cohort] if (cohort_list.include? student[:cohort]) == false}
    # print students by cohort
    cohort_list.each { |cohort|
      puts "\nStudents in the #{cohort} cohort: \n"
      @students.each { |student| puts "#{student[:name]}" if student[:cohort] == cohort }
    }
  end

  def print_menu
    puts "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
    puts "1. Input the students"
    puts "2. Show the students"
    puts "3. Save the list to students.csv"
    puts "4. Load the list from students.csv"
    puts "9. Exit"
    puts "*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*"
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
    when "3"
      # save students in file
      save_students
    when "4"
      load_students
    when "9"
      exit # termination of the program
    else
      puts "I don't know what you mean, try again"
    end
  end

  def save_students
    # open the file for writing
    file = File.open("students.csv", "w")
    # iterate over the array of students
    @students.each do |student|
      student_data = [student[:name], student[:cohort]]
      csv_line = student_data.join(",")
      file.puts csv_line
    end
    file.close
  end

  def load_students(filename = "students.csv")
    file = File.open(filename, "r")
    file.readlines.each do |line|
      name, cohort = line.chomp.split(',')
      @students << {name: name, cohort: cohort.to_sym}
    end
    file.close
  end

  def try_load_students
    filename = ARGV.first # takes first argument from command line
    load_students if filename.nil?
    if File.exists?(filename)
      load_students(filename)
      puts "Loaded #{@students.count} from #{filename}"
    else
      puts "Sorry, #{filename} doesn't exist."
      exit
    end
  end

  def interactive_menu
    loop do
      print_menu
      process(STDIN.gets.chomp)
    end
  end
end

k12 = StudentDirectory.new
