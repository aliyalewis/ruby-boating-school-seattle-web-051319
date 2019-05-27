require 'pry'

class Student
attr_reader :first_name
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

  def self.find_student(name)
    self.all.find do |student|
      student.first_name == name
    end
  end

  def grade_percentage
    all_tests = BoatingTest.all.select do |test|
      test.student == self
    end
    num_all_tests = all_tests.count
    passed_tests = all_tests.select do |test|
      test.status == "Passed"
    end
    num_passed_tests = passed_tests.count
    (num_passed_tests.to_f/num_all_tests)*100
  end


end
