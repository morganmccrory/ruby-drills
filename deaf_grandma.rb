def deaf_grandma
  remark = gets.chomp!
  second_remark = "filler string"
  until remark == "I LOVE YA, GRANDMA, BUT I'VE GOT TO GO" || (remark == "" && second_remark == "")
    remark == remark.upcase ? (puts "NO, NOT SINCE 1983!") : (puts "HUH!? SPEAK UP, SONNY?")
    second_remark = remark
    remark = gets.chomp!
  end
end

deaf_grandma