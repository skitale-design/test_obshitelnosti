class Questions
  # Замена геттера для @score_counter
  attr_reader :score_counter

  def initialize(user_name, questions_path)
    @name = "Добрый день, #{user_name}!"
    puts "@name = #{@name}"
    if File.exists?(questions_path)
       file = File.new(questions_path, "r:UTF-8")
       @questions = file.readlines
       file.close
    end
    @question_counter = 0
    @score_counter = 0
  end

  def get_user_input
    # Объявляем переменную до цикла loop (иначе она не будет видня вне цикла):
    user_input = nil
    # Проверка ввода данных пользователем:
    loop do
      user_input = STDIN.gets.chomp
      break if ["1","2","3"].include?(user_input)
    end
    user_input
  end

  def print_info
    system "clear"
    print @name
    print " Ваш текущий балл: #{@score_counter}\n\n"
    puts "(1 – \"да\", 2 – \"нет\", 3 – \"иногда\")\n\n"
  end

  # Задаем вопрос и считаем балл
  def next_question
    print_info
    puts @questions[@question_counter]
    # Подсчет баллов: "да" = 2 ,  "нет" = 0, "иногда" = 1 ,
    @score_counter += case get_user_input
              when "1" then 2
              when "2" then 0
              when "3" then 1
              end
    @question_counter += 1
  end
  # Проверка на конец списка вопросов (конец массива)
  def finished?
      @question_counter == @questions.size
  end
end
