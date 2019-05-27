require 'pry'

class Instructor
attr_reader :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student, test_name)
    single_test = BoatingTest.all.find do |test|
      test.student == student && test.test_name == test_name
    end
      if single_test
        single_test.status = "Passed"
      else
        BoatingTest.new(student, test_name, "Passed", self)
    end
  end

  def fail_student(student, test_name)
    single_test = BoatingTest.all.find do |test|
      test.student == student && test.test_name == test_name
    end
      if single_test
        single_test.status = "Failed"
      else
        BoatingTest.new(student, test_name, "Failed", self)
    end
  end

  end
