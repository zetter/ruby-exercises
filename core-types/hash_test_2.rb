gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/homework'

class HashTest < Minitest::Homework
  be_gentle!

  def test_equality_1
    one = {'a' => 'apple', 'b' => 'banana'}
    two = {'a' => 'apple', 'b' => 'banana', 'c' => 'carrot'}
    maybe one == two

    three = {'a' => 'apple', 'b' => 'banana'}
    four = {'a' => 'apple', 'b' => 'banana'}
    maybe three == four

    five = {'a' => 'apple', 'b' => 'banana'}
    six = {'b' => 'banana', 'a' => 'apple'}
    maybe five == six
  end

  def test_equality_2
    one = __
    assert_equal(one, 'count' => 6)
  end
  
  def test_equality_3
    one = {:a => 'apple', :b => 'banana'}
    two = {'a' => 'apple', 'b' => 'banana'}
    maybe one == two
    
    three = {a: 'apple', b: 'banana'}
    four = {'a' => 'apple', 'b' => 'banana'}
    maybe three == four
    
    five = {:a => 'apple', :b => 'banana'}
    six = {a: 'apple', b: 'banana'}
    maybe five == six
    
    seven = {:'a' => 'apple', :'b' => 'banana'}
    eight = {a: 'apple', b: 'banana'}
    maybe seven == eight
    
    nine = {:'a' => 'apple', :'b' => 'banana'}
    ten = {'a' => 'apple', 'b' => 'banana'}
    maybe nine == ten
  end
end
