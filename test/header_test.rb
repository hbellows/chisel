
MOVED TO FORMATTER_TEST CLASS

require 'minitest/autorun'
require 'minitest/pride'
require './lib/header'


class HeaderTest < Minitest::Test

  def test_it_can_detect_headers
    header = Header.new
    input = '### The Horror in Clay.'

    result = '<h3>The Horror in Clay.</h3>'
    assert_equal result, header.find_headers(input)
  end

  def test_it_can_detect_no_headers
    header = Header.new
    input = "This is how it all ends.\n"

    result = "This is how it all ends.\n"
    assert_equal result, header.find_headers(input)
  end

  def test_it_can_format_headers
    header = Header.new
    input_1 = "# This is an h1 header."
    input_2 = "### This is an h3 header."

    result_1 = "<h1>This is an h1 header.</h1>"
    result_2 = "<h3>This is an h3 header.</h3>"

    assert_equal result_1, header.format_header(input_1)
    assert_equal result_2, header.format_header(input_2)
  end
end
