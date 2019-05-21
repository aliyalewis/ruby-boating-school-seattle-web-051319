class Student
attr_reader :first_name
attr_accessor :boating_test
@@all = []

def initialize(first_name)
  @first_name = first_name
  @@all << self
end

def self.all
  @@all
end

def add_boating_test(test_name, status, instructor)
  BoatingTest.new(self, test_name, status, instructor)
end

def self.find_student(first_name)
  self.all.find do |student|
    student.first_name.downcase == first_name.downcase
  end
end

def grade_percentage
#returns the percentage of tests that a student has passed as a Float.
  all_tests = BoatingTest.all.select do |test|
    test.student = self
  end
  # I'm trying to pull out all the passing tests by iterating through all_tests
  # and setting them to the variable passed_test.
  passed_test = all_tests.select do |test|
    test.test_status == "passed"
    # binding.pry
  # (passed_test/all_tests.length).to_f * 100
  end
end


end
