# 문제 3: 배열/해시 활용 - Student 성적 관리
# 요구사항
# Student 클래스를 만드세요:

# 속성: name, scores(과목별 점수를 담을 해시, 예: {"수학" => 90, "영어" => 85})
# initialize(name) : scores는 빈 해시로 시작
# add_score(subject, score) : 해시에 과목-점수 추가
# average : 모든 점수의 평균 반환 (반올림 없이 그냥 계산)
# best_subject : 가장 점수가 높은 과목 이름 반환 (힌트: max_by를 해시에도 쓸 수 있어요)

class Student

  def initialize(name)
    @name = name
    @scores = {}
  end

  def add_score(subject, score)
    @scores[subject] = score
    p "과목명: #{subject}에 점수 #{score}점을 획득했습니다."
  end

  def average
    get_average = @scores.values.sum / @scores.size.to_f
    p "전체 과목(#{@scores.keys.join(". ")})의 평균은 #{get_average.round(1)}입니다."
  end

  def best_subject
    superb = @scores.max_by { |subject, score| score } [0]
    p "#{@name} 학생의 가장 우수한 과목은 #{superb}입니다."
  end
  
end

student_A = Student.new("김길수")

student_A.add_score("국어", 100)
student_A.add_score("영어", 100)
student_A.add_score("수학", 80)

student_A.average
student_A.best_subject