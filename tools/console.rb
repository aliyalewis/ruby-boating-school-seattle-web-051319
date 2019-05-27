require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

instructor1 = Instructor.new("Fabian")
instructor2 = Instructor.new("Jenny")

s1 = Student.new("Noah")
s2 = Student.new("Aidi")

b1 = BoatingTest.new(s1, "Parking", "Passed", instructor1)
b2 = BoatingTest.new(s1, "Turning", "Failed", instructor2)
b3 = BoatingTest.new(s2, "Parking", "Passed", instructor1)

# s1.add_boating_test("Parking", "Pending", instructor1)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
