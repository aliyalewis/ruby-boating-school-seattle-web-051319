class Instructor
attr_accessor :name
@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student_name, test_name)
    if BoatingTest.all.find do |test|
      test.name == test_name && test.student == student_name
      test.test_status = "passed"
    end
    else BoatingTest.new(student_name, test_name, "passed", instructor)
    end
  end

  def fail_student(student_name, test_name)
    if BoatingTest.all.find do |test|
      test.name == test_name && test.student == student_name
      test.test_status = "failed"
    end
    else BoatingTest.new(tudent_name, test_name, "failed", instructor)
    end
  end

end
