class Student
  attr_accessor :student_name, :boating_test
  @@all = []

  def initialize(student_name)
    @student_name = student_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student
    self.all.find do |student|
      student.name = self.name
    end
  end

  def grade_percentage
    passed_tests = BoatingTest.all.collect do |test|
      test.student == self
      test.test_status == test_status = "passed"
    end
    all_tests = BoatingTest.all.collect do |test|
      test.student == self
    end
      (passed_tests/all_tests) * 100
  end

end
