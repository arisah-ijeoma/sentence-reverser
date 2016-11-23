require "minitest/autorun"
require "./reverse_my_sentence.rb"

class ReverserTest < Minitest::Test
  def test_reversal
    assert_equal("the big black cat.", ReverseMySentence.new.reverser("cat black big the."))
    assert_equal("chicken eating love I", ReverseMySentence.new.reverser("I love eating chicken"))
    assert_equal("chicken eating love I.", ReverseMySentence.new.reverser("I love eating chicken."))
    assert_equal("Me.", ReverseMySentence.new.reverser("Me."))
    assert_equal("so believe I? fun traveling Is.", ReverseMySentence.new.reverser("Is traveling fun? I believe so."))
  end
end
