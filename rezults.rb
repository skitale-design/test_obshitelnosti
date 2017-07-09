class Rezults

  def initialize
     if File.exists?("./data/answers.txt")
       file = File.new("./data/answers.txt", "r:UTF-8")
       @rezults = file.readlines
       file.close
      end
  end


  def get_rezult number

    if number >= 30
      return @rezults[0]

    elsif number < 30 && number >= 25
      return @rezults[1]

    elsif number < 25 && number >= 19
      return @rezults[2]

    elsif number < 19 && number >= 14
      return @rezults[3]

    elsif number < 14 && number >= 9
      return @rezults[4]

    elsif number < 9 && number >= 4
      return @rezults[5]

    else
      return @rezults[6]
    end

  end
end
