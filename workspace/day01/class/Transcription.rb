class Transcription
  def initialize(file_name)
    @file_name = file_name
    @text = "text"
    @duration = 3600
    @status = "completed"
  end

  def summary
    "File name = #{@file_name}, Text = #{@text}, duration = #{@duration}, status = #{@status}"
  end

  def long_audio?
    @duration > 60 ? true : false
  end

  def add_transcription(text, duration)
    @text = text
    @duration = duration
    pass = "성공" if duration > 0
    fail = "실패" unless duration > 0

    if duration <= 0
      @status = fail
    elsif duration > 0
      @status = pass
    end
  end
end

transcriptions = []

3.times do |i|

  puts "파일명을 입력하세요:"
  file_name = gets.chomp

  puts "오디오 길이를 입력하세요:"
  duration = gets.chomp.to_i

  new_transcription = Transcription.new # 매번 새 객체 생성
  new_transcription.add_transcription("Transcription #{i + 1}", duration)
  transcriptions.push(new_transcription)
end

p transcriptions.length

transcriptions.each do |transcription|
  puts transcription.summary
  puts "오디오 길이가 60초 이상인가요? #{transcription.long_audio?}"
end

transcriptions.select { |transcription| transcription.duration > 60 }.each do |transcription|
  puts "오디오 길이가 60초 이상인 파일명: #{transcription.summary}"
end

long_audios = transcriptions.select { |t| t.long_audio? }
puts "1분 이상인 오디오 개수: #{long_audios.length}개"

count = transcriptions.count { |t| t.long_audio? }
puts "1분 이상인 오디오 개수: #{count}개"

total_duration = transcriptions.sum { |t| t.duration }
puts "전체 오디오 길이: #{total_duration}초"

total_duration = transcriptions.each do |t|
  total_duration += t.duration
end
puts "전체 오디오 길이: #{total_duration}초"
