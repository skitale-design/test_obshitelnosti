require_relative 'questions'
require_relative 'rezults'

questions_path = "./data/questions.txt"
answers_path = "./data/answers.txt"

user_name = ARGV[0]
user_name = "гость" if (ARGV[0] == nil || ARGV[0] == " ")
questions = Questions.new(user_name, questions_path)
rezults = Rezults.new(answers_path)
loop do
  questions.next_question
  break if questions.finished?
end
puts
puts "----------- ваш результат: #{questions.score_counter} \n\n"
puts rezults.rezult questions.score_counter
puts
