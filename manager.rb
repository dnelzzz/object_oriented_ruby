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
  def initialize(input_option_hash)
    super
    @employees = input_option_hash[:employees]
  end
  def send_report 
    puts "Sending email..."
    puts "Email sent!"
  end
end

manager = Manager.new(
  first_name: "Jacob", 
  last_name: "Peters", 
  salary: 50000, 
  employees: ["bryan", "steven"]
)

p manager
manager.print_info 