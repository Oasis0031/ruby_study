#  요구사항
# 초급 : Task 클래스를 만드세요:
# 속성: title(제목), done(완료 여부, true/false)
# initialize(title) : done은 항상 false로 시작
# complete! : done을 true로 바꿈
# status : done이 true면 "[완료] 제목", false면 "[미완료] 제목" 반환

class Task

  def initialize(title)
    @title = title
    @done = false
  end

  def complete!
    @done = true
  end

  def status
    @done ? "[완료] #{@title}" : "[미완료] #{@title}"
  end
end

tasking = Task.new("오늘 할 일")
p tasking.status
tasking.complete!
p tasking.status