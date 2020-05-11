require('minitest/autorun')
require('minitest/reporters')
require_relative('../week_02_day_01_lab')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class CodeClanStudent < MiniTest::Test

  def test_student_name
  #  creating an object below
    student = CodeClanStudent.new("KeithC","G19")
    # keiths_account = BankAccount.new("keith", 123, "Pleasure")
    assert_equal("KeithC", student.student_name)
  end

  def test_student_cohort
    student = CodeClanStudent.new("KeithC","G19")
    assert_equal("G19", student.student_cohort)
  end

  def test_student_can_talk
    student = CodeClanStudent.new("KeithC","G19")
    # student.can_talk("I can talk!")
    assert_equal("I can talk!", student.can_talk)
  end

  def test_student_favourite_language
  student = CodeClanStudent.new("KeithC","G19")
  favourite = student.students_favourite_language("Ruby")
  assert_equal("I love Ruby", favourite)
  end

end
