class Library

attr_accessor :title, :rental_details

def initialize(input_title, input_rental_details)
  @title = input_title
  @rental_details = input_rental_details(:student_name, :date)
end



end
