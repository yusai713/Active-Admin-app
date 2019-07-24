class User < ApplicationRecord

  # Rspec用のコード
  attr_accessor :test_name, :test_age

  def initialize(test_name:,test_age:)
    @test_name = test_name
    @test_age = test_age
  end

  def disp_name
    if @test_age > 19
      return "#{@test_name}さん"
    elsif @test_age > 10
      return "#{@test_name}君"
    elsif @test_age > 0
      return "#{@test_name}ちゃん"
    else
      return "不正な値です。"
    end
  end

end