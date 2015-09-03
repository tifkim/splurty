require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
# Quote.first.unique_tag

  test "unique_tag" do
    quote = FactoryGirl.create(:quote, :author => 'Abraham Lincoln')

    expected = 'AL#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual

  end


end
