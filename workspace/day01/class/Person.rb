class Person
  attr_accessor :name, :age # attr_accessor는 name과 age 속성에 대한 getter와 setter 메서드를 자동으로 생성.

  def initialize(name, age) # 생성자 메서드, 인스턴스가 생성될 때 호출됨
    @name = name # 인스턴스 변수 @name에 매개변수 name을 할당
    @age = age   # 인스턴스 변수 @age에 매개변수 age를 할당
  end

  def introduce
    puts "내 이름은 #{@name}, 나이는 #{@age}세입니다." # 문자열 보간을 사용하여 인스턴스 변수 출력
  end
end

person = Person.new("철수", 25) # Person 클래스의 인스턴스를 생성하고 name과 age를 초기화
person.introduce # introduce 메서드를 호출하여 자기소개 출력