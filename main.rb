require_relative 'questions'
require_relative 'rezults'

questions_path = "./data/questions.txt"
answers_path = "./data/answers.txt"

user_name = ARGV[0]
user_name = "гость" if (ARGV[0] == nil || ARGV[0] == " ")

questions = Questions.new(user_name, questions_path)
rezults = Rezults.new(answers_path)

# puts "rezults.get_rezult = #{rezults.get_rezult(1)}"  # test

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
