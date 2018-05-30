require 'minitest/autorun'
require 'minitest/pride'

class FormatterTest < Minitest::Test

  def test_it_can_format_headers
    formatter = Formatter.new
    input_1 = "# This is an h1 header."
    input_2 = "### This is an h3 header."

    result_1 = "<h1>This is an h1 header.</h1>"
    result_2 = "<h3>This is an h3 header.</h3>"

    assert_equal result_1, formatter.format_header(input_1)
    assert_equal result_2, formatter.format_header(input_2)
  end

  def test_it_can_make_new_html_paragraph
    formatter = Formatter.new
    input = "Into the peace and safety of a new dark age.\n"

    result = "<p>Into the peace and safety of a new dark age.</p>\n"

    assert_equal result, formatter.format_paragraph(input)
  end

  def test_it_formats_emphasized_words
    formatter = Formatter.new
    input = "Into the peace and safety of a *new dark age*.\n"

    result = "<p>Into the peace and safety of a <em>new dark age</em>.</p>\n"
    assert_equal result, formatter.format_word_emp(input)

  def test_it_formats_stronged_words
    formatter = Formatter.new
    input = "Into the **peace & safety** of a new dark age.\n"

    result = "<p>Into the <strong>peace &amp; safety</strong> of a new dark age.</p>\n"
    assert_equal result, formatter.format_word_str(input)
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
