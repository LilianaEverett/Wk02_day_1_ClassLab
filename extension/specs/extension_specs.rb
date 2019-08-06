require('minitest/autorun')
require('minitest/rg')
require_relative('../extension')

class TestLibrary < MiniTest::Test

  def test_book_name
   library = Library.new('Lord of the Rings', rental_details)
   assert_equal('Lord of the Rings', library.title)
  end


end
