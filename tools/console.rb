require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

s1 = Student.new("Aliya")
s2 = Student.new("Angelica")

instructor1 = Instructor.new("Levi")

s1.add_boating_test("Parking", "Pending", instructor1)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
