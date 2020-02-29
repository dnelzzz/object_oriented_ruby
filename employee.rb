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

 puts employee1[:first_name] + " " + employee1[:last_name] + " makes " + employee1[:salary].to_s + " dollar per year"
 puts "#{employee2[:first_name]} #{employee2[:last_name]} makes #{employee2[:salary]} dollars per year"

 #employee colon after (cleaner)

 employee1 = {first_name: "james", last_name: "france", salary: 1500000}
 puts "#{employee1[:first_name]} #{employee1[:last_name]} makes #{employee1[:salary]} dollars per year"
