# 루비의 배열과 해시는 색인된 컬렉션.
# 둘 다 키 값을 이용해서 접근할 수 있는 객체 모음

# 해시에서는 키값으로 어떤 객체를 사용해도 무방하나, 배열은 정수만 사용 가능. 어떤 타입의 객체라도 함께 저장 가능하다.

# 배열 리터럴
a = [ 1, 'cat', 3.14]
puts "The first element is #{a[0]}"
a[2] = nil
puts "the array is now #{a.inspect}"

#단축문법 %w

a = [ 'ant', 'bee', 'cat']
puts a[0]
puts a[1]

a = %w[ant bee cat]
puts a[2]

# 해시 리터럴 =>
# 왼쪽이 키, 오른쪽이 키값
# 해당하는 값이 없으면 nil(거짓) 반환

inst_section = {
  'cello' => 'string',
  'clarinet' => 'woodwind',
  'drum' => 'percussion',
  'oboe' => 'woodwind',
  'trumpet' => 'brass',
  'violin' => 'string'
}

p inst_section['oboe']
p inst_section['guitar']

#해시의 기본값을 0으로 설정할 수 있다면, 특정 단어가 등장했을 때 단어에 대한 키의 유무를 확인하지 않아도
# +1만 해주면 된다. 이를 위해 해시 객체를 생성할 때 기본값을 넘겨주면 됨.(61p)

histogram = Hash.new(0)
histogram['ruby'] # => 0
histogram['ruby'] histogram['ruby'] + 1
histogram['ruby'] # => 1 