# Student Directory #
<div style="text-align: justify">
The Student Directory ruby script (directory.rb) enables the user to manage the list/directory of students that are currently enrolled at the Villains Academy :smiling_imp:.<br>
<br>The script contains a class called *StudentDirectory*, an instance of which is a student directory on its own. The class has its own methods for displaying, editing, loading, saving, and even exiting the current student directory, and all that is accomplished through an interactive menu that is shown to the user upon defining a new StudentDirectory class instance.
<br><br>
Enjoy!
</div>

## How to use ##

The StudentDirectory class could be used to either create a new student directory from scratch by inputing each student one by one, or the user could also load a pre-written .csv file containing the students and their respective cohorts. In both cases, the user is able to save any modifications in the student directory into either a new or pre-existing file.

#### Create an object of the StudentDirectory Class
An object of the StudentDirectory class is simply an entire student directory itself. In order to create this object, one needs to use the *new* method of the class.

```ruby
villains_academy_SDirectory = StudentDirectory.new
```

This statement can be found at the bottom of the directory.rb script so that when the user executes the script using *ruby* from the command line, the directory is automatically been created.

#### Run directory.rb using ruby

In order to execute the script, the following statement needs to be run on the command line, as follows,

```bash
ruby directory.rb
```

If the script is executed without a command line argument, representing the .csv file, then the program runs assuming a default file named *students.csv*, from which to load the list of students if necessary. If another file is desired, it can be declared as a command line argument like so,

```bash
ruby directory.rb filename.csv
```
When either of the two statements is executed, the program asks from the user whether she would like to view the interactive menu; it looks like this,

```
Would you like to see the menu? [y/n]
_
```
waiting for user input (y or n) in order to proceed. If user input is *y*, the interactive menu pops up and looks like this,

```
*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
1. Input the students
2. Show the students
3. Save the list to students.csv
4. Load the student list from file
9. Exit
*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*
```
If *n*, then nothing happens and the object is successfully created in both cases.

> Once the user chooses an option from the menu (1 - 4 or 9), the methods of the class will guide the user through the required steps.
