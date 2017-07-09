require_relative 'questions'
require_relative 'rezults'

user_name = ARGV[0]
user_name = "гость" if (ARGV[0] == nil || ARGV[0] == " ")

questions = Questions.new  user_name
rezults = Rezults.new

until questions.finished?
  questions.next_question
end
puts
puts "----------- ваш результат: #{questions.get_score} \n\n"
puts rezults.get_rezult questions.get_score
puts
# puts "summ = #{summ}"
# puts "Count.new(summ) = #{Count.new}"
# puts "counter.rezult summ = #{counter.rezult summ}"
