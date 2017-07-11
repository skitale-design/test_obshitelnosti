require_relative 'lib/test'
require_relative 'lib/results'

questions_path = "./data/questions.txt"
answers_path = "./data/answers.txt"

user_name = ARGV[0]
user_name = "гость" if (ARGV[0] == nil || ARGV[0] == " ")
questions = Test.new(user_name, questions_path)
result = Results.new(answers_path)
loop do
  questions.next_question
  break if questions.finished?
end
puts
puts "----------- ваш результат: #{questions.score_counter} \n\n"
puts result.result questions.score_counter
puts
