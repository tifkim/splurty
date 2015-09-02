require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
# Quote.first.unique_tag

  test "unique_tag" do
    quote = Quote.create(:author => 'Abraham Lincoln', :saying => 'Things come to those who wait, but only the things left behind by those who hustle.')
    expected = 'AL#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual

  end


end
