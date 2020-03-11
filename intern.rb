module EmailReportable
  def send_report 
    puts "Sending email..."
    puts "Email sent!"
  end
end

class Employee
  attr_reader :first_name, :last_name, :salary
  attr_writer :active

  def initialize(input_option_hash)
    @first_name = input_option_hash[:first_name]
    @last_name = input_option_hash[:last_name]
    @salary = input_option_hash[:salary]
  end

  def give_annual_raise
    @salary = 1.5 * @salary
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} dollars per year"
  end

  def change_salary(input_new_salary)
    @salary = input_new_salary
  end
end

class Manager < Employee
  include EmailReportable
  def initialize(input_option_hash)
    super
    @employees = input_option_hash[:employees]
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end
end

class Intern < Employee
  include EmailReportable
end

employee1 = Employee.new(
  first_name: "Alan",
  last_name: "Web",
  salary: 50000
)

employee2 = Employee.new(
  first_name: "Kara",
  last_name: "Goucher",
  salary: 60000
)

# p employee1
# p employee2

manager = Manager.new(
  first_name: "Jacob", 
  last_name: "Peters", 
  salary: 10000000, 
  employees: [employee1, employee2],
)

intern1 = Intern.new(
  first_name: "Bryan",
  last_name: "Peters",
  salary: 30000
)

intern1.print_info
intern1.send_report
p intern1
