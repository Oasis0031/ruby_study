# 조건문

score = 85

if score >= 90
  puts "A"
elsif score >= 80
  puts "B"
elsif score >= 70
  puts "C"
elsif score >= 60
  puts "D"
else
  puts "F"
end

# unless는 if의 반대 개념으로, 조건이 거짓일 때 실행됨

unless score < 60 # score가 60 미만이 아니라면
  puts "합격"
end

# 한 줄 조건문(후위 if)
pass = puts "합격" if score >= 60
fail = puts "불합격" unless score >= 60

# gets 입력자
def get_user_input
  puts "이름을 입력하세요."
  name = gets.chomp # gets로 입력받은 문자를 .chomp로 줄바꿈 문자 제거

  puts "안녕하세요, #{name}님! 점수를 입력해주세요." # 문자열 보간으로 입력받은 이름 출력
  score_input = gets.chomp.to_i # 입력받은 점수를 정수로 변환

  pass_or_fail = score_input >= 60 ? "합격" : "불합격"
  puts "#{name}님의 점수는 #{score_input}점입니다. #{pass_or_fail}입니다. 등급은 #{score}입니다."
end

get_user_input()