class CodeClanStudent

  attr_accessor :student_name, :student_cohort

  def initialize(student_name, student_cohort)

    @student_name = student_name
    @student_cohort = student_cohort
  end

  def can_talk()
    return "I can talk!"
  end

  def students_favourite_language (string)
    return "I love #{string}"
  end
end
