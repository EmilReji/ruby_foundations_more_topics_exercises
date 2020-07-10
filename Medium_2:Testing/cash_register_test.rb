require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!
require_relative 'cash_register.rb'
require_relative 'transaction.rb'

class CashRegisterTest < Minitest::Test
  def setup
    @cash_register = CashRegister.new(100.00)
    @transaction_1 = Transaction.new(10.00)
  end
  
  def test_accept_money
    @transaction_1.amount_paid = 10.00
    @cash_register.accept_money(@transaction_1)
    assert_equal(110.00, @cash_register.total_money)
  end
  
  def test_change
    @transaction_1.amount_paid = 20.00
    change = @cash_register.change(@transaction_1)
    assert_equal(10.00, change)
  end
  
  def test_give_receipt
    @transaction_1.amount_paid = 10.00
    paid = @transaction_1.item_cost
    assert_output("You've paid $#{paid}.\n") do
      @cash_register.give_receipt(@transaction_1)
    end
  end
  
  def test_prompt_for_payment
    cost = @transaction_1.item_cost
    assert_output("You owe $#{cost}.\nHow much are you paying?\n") do
      $stdin = StringIO.new('10\n')
      @transaction_1.prompt_for_payment
    end
    assert_equal(10, @transaction_1.amount_paid)
  end
  
  
end
