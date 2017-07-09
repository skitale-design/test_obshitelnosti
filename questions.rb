
class Questions

  def initialize(user_name, questions_path)
    @name = "Добрый день, #{user_name}!"
    puts "@name = #{@name}"
    if File.exists?(questions_path)
       file = File.new(questions_path, "r:UTF-8")
       @questions = file.readlines
       file.close
    end
    # Счетчик вопросов
    @counter = 0
    # Счетчик набранных баллов
    @score = 0
  end

  # Проверка на конец списка вопросов (конец массива)
  def finished?
      @counter == @questions.size
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
    print " Ваш текущий балл: #{@score}\n\n"
    puts "(1 – \"да\", 2 – \"нет\", 3 – \"иногда\")\n\n"
  end
  # Задаем вопрос и считаем балл
  def next_question
    print_info
    puts @questions[@counter]
    # Подсчет баллов: "да" = 2 ,  "нет" = 0, "иногда" = 1 ,
    @score += case get_user_input
              when "1" then 2
              when "2" then 0
              when "3" then 1
              end
    @counter += 1
  end
# Возвратить количество баллов:
  def get_score
    @score # можно без "return"
  end
end
