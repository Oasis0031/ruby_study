def greet(name)
  puts "Hi. this is #{name}."
end

greet("Alice")

# 기본값이 있는 매개변수
def greet(name = "Guest")
  "안녕, #{name}님!"
end

puts greet("철수") # "안녕, 철수님!"
puts greet() # "안녕, Guest님!"