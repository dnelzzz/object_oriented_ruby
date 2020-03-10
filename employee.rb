#employee using array

employee1 = ["James", "Franco", 1500000, true]
employee2 = ["Jennifer", "Aniston", 10000000, false]
puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " dollar per year." 
puts employee2[0] + " " + employee2[1] + " makes " + employee2[2].to_s + " dollar per year." 
puts "#{employee1[0]} #{employee1[1]} makes #{employee1[2]} per year."
puts "#{employee2[0]} #{employee2[1]} makes #{employee2[2]} per year."

#employee using hash

employee1 = {"first_name" => "James", "last_name" => "Franco", "salary" => 1500000}
employee2 = {"first_name" => "Jennifer", "last_name" => "Aniston", "salary" => 1000000}

puts employee1["first_name"] + " " + employee1["last_name"] + " makes " + employee1["salary"].to_s + " dollars per year."
puts "#{employee2["first_name"]} #{employee2["last_name"]} makes #{employee2["salary"]} dollars per year."

#employee using symbols
 employee1 = {:first_name => "James", :last_name => "Franco", :salary => 1500000}
 employee2 = {:first_name => "Jennifer", :last_name => "Aniston", :salary => 1000000}
 employee1[:salary] = 1.1 * employee1[:salary]

 puts employee1[:first_name] + " " + employee1[:last_name] + " makes " + employee1[:salary].to_s + " dollar per year"
 puts "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} dollars per year"

 #employee colon after (cleaner)

 employee1 = {first_name: "james", last_name: "france", salary: 1500000}
 puts "#{employee1[:first_name]} #{employee1[:last_name]} makes #{employee1[:salary]} dollars per year"


#class

class Employee
  attr_reader :first_name, :last_name, :salary # replaces commented section below.
  attr_writer :active

  # def initialize(input_first_name, input_last_name, input_salary)
  #   @first_name = input_first_name
  #   @last_name = input_last_name
  #   @salary = input_salary
  # end

  # inializie beloew replaces cumberson above

  def initialize(input_option_hash)
    @first_name = input_option_hash[:first_name]
    @last_name = input_option_hash[:last_name]
    @salary = input_option_hash[:salary]
  end

  #   def get_first_name
  #     return @first_name
  #   end

  #   def get_last_name
  #     return @last_name
  #   end

  #   def get_salary 
  #     return @salary
  #   end

  def give_annual_raise
    @salary = 1.5 * @salary
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} dollars per year"
  end

  def print_info2
    return "#{@first_name} #{@last_name} makes #{@salary} per year"
  end 

  def change_salary(input_new_salary)
    @salary = input_new_salary
  end

  # OR

  def change_salary2=(input_new_salary)
    @salary = input_new_salary
  end

end

employee1 = Employee.new({first_name: "Brad", last_name: "Pitt", salary: 5000000})
employee1.give_annual_raise
employee1.print_info
puts employee1.print_info2
employee2 = Employee.new({first_name: "J", last_name: "Lo", salary: 5000000}) # no {}
employee2.give_annual_raise
employee2.print_info
puts employee2.print_info2

puts employee1.first_name
puts employee2.last_name

employee2.change_salary(15)
puts employee2.salary
employee2.change_salary2=(30)
puts employee2.salary



