class Rezults
  def initialize(answers_path)
     if File.exists?(answers_path)
       file = File.new(answers_path, "r:UTF-8")
       @rezults = file.readlines
       file.close
      end
  end

  def rezult(number)
    # 1..3 -> 1,2,3 (включая последнюю цифру),  1...3 -> 1,2 (не включает последнюю цифру)
     case number
     when 30 .. 32 then @rezults[0]
     when 25 .. 29 then @rezults[1]
     when 19 .. 24 then @rezults[2]
     when 14 .. 18 then @rezults[3]
     when 9 .. 13 then @rezults[4]
     when 4 .. 8 then @rezults[5]
     when 0 .. 4 then @rezults[6]
     end

  end
end
