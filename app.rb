def separation(whole, dividend, k)
  if k == 1 
    dividend=whole/10
  else
    dividend=whole%10
  end
end

def search_num(num, i)
  str=""
  case num
    when 0
      str = $zero[i]
    when 1
      str = $one[i]
    when 2
      str = $two[i]
    when 3
      str = $three[i]
    when 4
      str = $four[i]
    when 5
      str = $five[i]
    when 6
      str = $six[i]
    when 7
      str = $seven[i]
    when 8
      str = $eight[i]
    when 9
      str = $nine[i]
  end
end

def clock
  $one = [' __ ', '/_ |', ' | |', ' | |', ' | |', ' |_|']
  $two = [' ___  ', '|__ \ ', '   ) |', '  / / ', ' / /_ ', '|____|']
  $three = [' ____  ', '|___ \ ', '  __) |', ' |__ < ', ' ___) |', '|____/ ']
  $four = [' _  _ ', '| || |', '| || |', '|__  |', '   | |', '   |_|']
  $five = [' _____ ', '| ____|', '| |__  ', '|___ \ ', ' ___) |', '|____/ ']
  $six = ['   __  ', '  / /  ', ' / /_  ', '|  _ \ ', '| (_) |', ' \___/ ']
  $seven = [' ______ ', '|____  |', '    / / ', '   / /  ', '  / /   ', ' /_/    ']
  $eight = ['  ___  ', ' / _ \ ', '| (_) |', ' > _ < ', '| (_) |', ' \___/ ']
  $nine = ['  ___  ', ' / _ \ ', '| (_) |', ' \__, |', '   / / ', '  /_/  ']
  $zero = ['  __  ', ' /  \ ', '| || |', '| || |', '| || |', ' \__/ ']
  $colon = [' _ ', '(_)', '   ', ' _ ', '(_)', '   ']

  time_now_hour = Time.now.hour
  time_now_min = Time.now.min
  time_now_sec = Time.now.sec

  time_now_hour_1, time_now_hour_2, time_now_min_1, time_now_min_2, time_now_sec_1, time_now_sec_2 = 0, 0, 0, 0, 0, 0

  time_now_hour_1=separation(time_now_hour, time_now_hour_1, 1)
  time_now_hour_2=separation(time_now_hour, time_now_hour_2, 2)
  time_now_min_1=separation(time_now_min, time_now_min_1, 1)
  time_now_min_2=separation(time_now_min, time_now_min_2, 2)
  time_now_sec_1=separation(time_now_sec, time_now_sec_1, 1)
  time_now_sec_2=separation(time_now_sec, time_now_sec_2, 2)

  $colon.size.times { |i| 
    puts (
      search_num(time_now_hour_1, i)+
      search_num(time_now_hour_2, i)+
      $colon[i]+
      search_num(time_now_min_1, i)+
      search_num(time_now_min_2, i)+
      $colon[i]+
      search_num(time_now_sec_1, i)+
      search_num(time_now_sec_2, i)
      )
  }
  
end

while true do
  puts "\e[H\e[2J"
  clock
  sleep(1)
end