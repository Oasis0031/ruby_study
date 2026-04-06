def say_goodnight(name)
  result = "good night, " + name
  return result
end

#잘 시간이다.

puts say_goodnight("john")
puts say_goodnight("doe")

puts "and good night \ngrandma"

# 큰 따옴표 문자열 처리 표현식 보간(expression interpolation) #{변수명}

def say_goodnight(name)
  result = "good night, #{name}"
  return result
end
puts say_goodnight('Pa')

def say_goodnight(name)
  result = "Good night, #{name.capitalize}"
  return result
end
puts say_goodnight('emma')

#return을 사용하지 않는 메서드 표현식
def say_goodnight(name)
  "Good night, #{name.capitalize}"
end
  puts say_goodnight('dad')

# 지역변수, 메서드 매개 변수, 메서드명은 모두 소문자나 밑줄로 시작
# 클래스 변수는 두 개의 @@ 표시로 시작. (거의 안 씀)