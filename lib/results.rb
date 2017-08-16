class Results
  def initialize(answers_path)
     if File.exists?(answers_path)
       file = File.new(answers_path, "r:UTF-8")
       @results = file.readlines
       file.close
      end
  end

  def result(number)
     case number
       when 30 .. 32 then @results[0]
       when 25 .. 29 then @results[1]
       when 19 .. 24 then @results[2]
       when 14 .. 18 then @results[3]
       when 9 .. 13 then @results[4]
       when 4 .. 8 then @results[5]
       when 0 .. 4 then @results[6]
     end
  end
end
