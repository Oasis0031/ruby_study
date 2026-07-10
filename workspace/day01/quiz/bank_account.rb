# 문제 2: 중급 - BankAccount 은행 계좌
# 요구사항
# BankAccount 클래스를 만드세요:

# 속성: owner(예금주), balance(잔액, 기본값 0)
# deposit(amount) : 잔액에 amount 더함. amount가 0 이하면 "입금액은 0보다 커야 합니다." 출력하고 아무 처리 안 함
# withdraw(amount) : 잔액에서 amount 뺌. 잔액보다 큰 금액을 출금하려 하면 "잔액이 부족합니다." 출력하고 아무 처리 안 함
# info : "예금주: 이름, 잔액: X원" 반환

class BankAccount

  def initialize(owner)
    @owner = owner
    @balance = 0
  end

  def deposit(amount)
      if amount <= 0 
        puts "입금액은 0보다 커야합니다. 다시 실행해주세요."
      else 
        @balance += amount
        puts "현재액 #{@balance}원 입니다."
      end 
  end

  def withdraw(amount)
    if @balance < amount
      puts "잔액이 부족합니다." 
    else
      @balance -= amount
      puts "현재액 #{@balance}원 입니다."
    end
  end 

  def info
    puts "예금주: #{@owner} 잔액: #{@balance}원"
  end

end

account = BankAccount.new("김범수")

account.deposit(0)
account.deposit(1000000)
account.withdraw(0)
account.withdraw(20000000)
account.withdraw(50000)
account.info