class Rezults

  def initialize(answers_path)
     if File.exists?(answers_path)
       file = File.new(answers_path, "r:UTF-8")
       @rezults = file.readlines
       file.close
      end
  end


  def get_rezult(number)
     return @rezults[0] if number >= 30
     return @rezults[1] if number.between?(25, 29)
     return @rezults[2] if number.between?(19, 24)
     return @rezults[3] if number.between?(14, 18)
     return @rezults[4] if number.between?(9, 13)
     return @rezults[5] if number.between?(4, 8)
     return @rezults[6] if number < 4
    # when < 30 && number >= 25
    #   @rezults[1]
    # elsif number < 25 && number >= 19
    #   @rezults[2]

    # elsif number < 19 && number >= 14
    #   @rezults[3]

    # elsif number < 14 && number >= 9
    #   @rezults[4]

    # elsif number < 9 && number >= 4
    #   @rezults[5]

    # else
    #   @rezults[6]
    # end

  end
end
