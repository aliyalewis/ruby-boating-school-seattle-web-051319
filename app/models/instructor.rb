class Instructor
  attr_reader :name, :boating_test
  @@all = []

def initialize(name)
  @name = name
end

def pass_student(student, test_name)
  # Takes in an argument of a student instance and a test test_name.
  # If there is a BoatingTest class that has a matching name and student
  # then the test status changes to "passed".
  # If there isn't, create a test with the student and the test name and
  # change the status to "passed". Both must go through the BoatingTest instance.
  single_test = BoatingTest.all.find{ |test| test.student == student && test.boat_test == test_name}
    if single_test
      single_test.test_status = "passed"
    else
      BoatingTest.new(student, test_name, "passed", self)
    end
  end

  def fail_student(student, test_name)
    single_test = BoatingTest.all.find{ |test| test.student == student && test.boat_test == test_name}
      if single_test
        single_test.test_status = "failed"
      else
        BoatingTest.new(student, boat_test, "failed", self)
      end
    end


end
