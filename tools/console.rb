require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

aliya = Student.new("Aliya")
angelica = Student.new("Angelica")
levi = Instructor.new("Levi")

aliya.add_boating_test("Turning", "Pending", levi)
aliya.add_boating_test("Speeding", "Pending", levi)

angelica.add_boating_test("Parking", "Pending", levi)
angelica.add_boating_test("Turning", "Pending", levi)

mm = levi.pass_student(aliya, "Turning")
oo = levi.pass_student(aliya, "Speeding")

tt = levi.fail_student(angelica, "Parking")
ww = levi.pass_student(angelica, "Turning")


# aliya.grade_percentage

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
