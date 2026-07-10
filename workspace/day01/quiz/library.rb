# 문제 4: 클래스 간 관계 - Library와 Book
# 요구사항 (Playlist/Song 패턴과 동일한 구조 연습)
# Book 클래스:

# 속성: title, author, available(대출 가능 여부, 기본 true)

# Library 클래스:

# 속성: books(배열)
# add_book(book) : 책 추가

class Book
  
  attr_accessor :title, :author, :available
  
  def initialize(title, author)
    
    @title = title
    @author = author
    @available = true
  end
  
  def info
    borrowable = @available ? "가능" : "불가능"
    p "제목: #{@title}, 저자: #{@author}, 대여 가능 여부 : #{borrowable}"
  end
end

class Library
  
  def initialize
    @books = []
  end
  
  def add_book(book)
    @books << book
    p "#{Book}이 도서관에 추가되었습니다."
  end
  # borrow_book(title) : title과 일치하는 책을 찾아서 available을 false로 바꾸고 "#{title}을 대출했습니다." 출력. 
  # 이미 대출중이면 "이미 대출중인 책입니다." 출력. 책이 없으면 "그런 책은 없습니다." 출력
  # available_books : 대출 가능한 책들의 제목만 배열로 반환

  def borrow_book(title)
    book = @books.find{ |b| b.title == title } 
    if book.nil?
      p "그런 책은 없습니다."
    elsif book.available == false
      p "이미 대출중인 책입니다."
    else book.available == true
      book.available = false
      p "#{title}을 대출했습니다."
    end
  end

  def available_books
    availables = @books.select { |b| b.available}.map { |b| b.title }
  
    if availables.empty?
      p "현재 대출 가능한 책이 없습니다."
    else
      p "대출 가능한 책: #{availables}"
    end
  end
  
end



library = Library.new
Cinderella = Book.new("신데렐라", "안데르센")
Cinderella.info

library.add_book(Cinderella)
library.borrow_book("오즈의 마법사")
library.borrow_book("신데렐라")
Cinderella.info
library.available_books