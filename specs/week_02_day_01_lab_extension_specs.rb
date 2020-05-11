require('minitest/autorun')
require('minitest/reporters')
require_relative('../week_02_day_01_lab_extension')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class Library < MiniTest::Test


  # book = Library.new([@book])

  book = Library.new([{ title: "lord_of_the_rings",
                        rental_details:
                        {student_name: "Jeff",date: "01/12/16"}
                        }
                        ],
                      {title: "War_and_Peace",
                       rental_details:
                       {student_name: "Keith",date: "15/5/15"}
                        }])

  def test_book_title
    Library.new([{ title: "lord_of_the_rings",
                          rental_details:
                          {student_name: "Jeff",date: "01/12/16"}
                          }
                          ],
                        {title: "War_and_Peace",
                         rental_details:
                         {student_name: "Keith",date: "15/5/15"}
                          }])
    assert_equal("Jeff", book.book_name)
  end



end
