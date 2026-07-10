# 반복문

# each 반복문
# 배열의 각 요소를 반복하면서 블록을 실행

[1, 2, 3, 4, 5].each do |num| # num은 배열의 각 요소, 파라미터
  puts num
end

# times
5.times do |i| # 0부터 4까지 반복
  puts i
end

# for 
for i in 1..5 # 1부터 5까지 반복한다.
  puts i
end

# while
i = 0
while i < 5
  puts i 
  i += 1
end

