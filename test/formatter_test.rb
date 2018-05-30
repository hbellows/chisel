require 'minitest/autorun'
require 'minitest/pride'
require './lib/formatter'

class FormatterTest < Minitest::Test
  # attr_reader :my_input
  #
  # def setup
  #   @my_input = File.readlines('my_input.md')
  # end
  # require "pry"; binding.pry

  def test_it_can_format_headers
    # skip
    formatter = Formatter.new
    input_1 = ["# This is an h1 header."]
    input_2 = ["### This is an h3 header."]

    result_1 = ["<h1>This is an h1 header.</h1>\n"]
    result_2 = ["<h3>This is an h3 header.</h3>\n"]

    assert_equal result_1, formatter.format_header(input_1)
    assert_equal result_2, formatter.format_header(input_2)
  end

  def test_it_can_make_new_html_paragraph
    # skip
    formatter = Formatter.new
    input = ["Into the peace and safety of a new dark age.\n"]

    result = ["<p>Into the peace and safety of a new dark age.</p>\n"]

    assert_equal result, formatter.format_paragraph(input)
  end

  def test_it_formats_ampersands
    # skip
    formatter = Formatter.new
    input = ["This and that & that and this."]

    result = ["This and that &amp; that and this."]
    assert_equal result, formatter.format_ampersand(input)
  end

  def test_it_formats_quotation_marks
    # skip
    formatter = Formatter.new
    input = ["And then she said, \"This is da bomb\"."]

    result = ["And then she said, &quot;This is da bomb&quot;."]
    assert_equal result, formatter.format_quotation_marks(input)
  end

  def test_it_formats_emphasized_words
    # skip
    formatter = Formatter.new
    input = ["Into the peace and safety of a *new dark age*.\n"]

    result = ["Into the peace and safety of a <em>new dark age</em>.\n"]
    assert_equal result, formatter.format_word_emp(input)
  end

  def test_it_formats_stronged_words
    skip
    formatter = Formatter.new
    input = ["Into the **peace & safety** of a new dark age.\n"]

    result = ["Into the <strong>peace &amp; safety</strong> of a new dark age.\n"]
    assert_equal result, formatter.format_word_strong(input)
  end
end



#Find header and find paragraph tests:
# def test_it_can_detect_headers
#   header = Header.new
#   input = '### The Horror in Clay.'
#
#   result = '<h3>The Horror in Clay.</h3>'
#   assert_equal result, header.find_headers(input)
# end
#
# def test_it_can_detect_no_headers
#   header = Header.new
#   input = "This is how it all ends.\n"
#
#   result = "This is how it all ends.\n"
#   assert_equal result, header.find_headers(input)
# end

# def test_it_can_detect_a_paragraph
#   paragraph = Paragraph.new
#   input = "This is my paragraph, yo.\n"
#
#   result = "<p>This is my paragraph, yo.</p>"
#
#   assert_equal result, paragraph.find_paragraph(input)
# end
