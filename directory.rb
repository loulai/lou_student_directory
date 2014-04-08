
students = [

{name: "Daniel Le Dosquet - Bergquist", cohort: :March},
{name: "Steve Musgrave", cohort: :March},
{name: "Sroop Sunar",  cohort: :March},
{name: "Colin Marshall", cohort: :March},
{name: "Josh Fail-Brown", cohort: :March},
{name: "Louise Lai", cohort: :March},
{name: "Robin Doble", cohort: :March},
{name: "Alex Wong", cohort: :March},
{name: "Scott Dimmock", cohort: :March},
{name: "Muhanad Al-Rubaiee", cohort: :March},
{name: "Shelley Hope", cohort: :March},
{name: "Will Hall", cohort: :March},
{name: "Oliver Delevingne", cohort: :March},
{name: "Nico Saueressig", cohort: :March},
{name: "Apostolis", cohort: :March},
{name: "Stefania Cardenas", cohort: :March},
{name: "Robert Leon", cohort: :March},
{name: "Emma Williams", cohort: :March},
{name: "Joey Wolf", cohort: :March},
{name: "Julie Walker", cohort: :March}
]


def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  cats = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do    
    # add the student hash to the array
    cats << {:name => name, :cohort => :March}    
    puts "Now we have #{cats.length} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  cats
end


def print_header
	puts "The students of my cohort at Makers Academy"
	puts "------------"
end

def print_stud(students)
	students.each do |student| 
		puts " #{student[:name]} (#{student[:cohort]} cohort)"
	end

end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

students = []
students = input_students
print_header
print_stud(students)
print_footer(students)