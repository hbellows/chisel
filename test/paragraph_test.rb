
MOVED TO FORMATTER_TEST CLASS

require 'minitest/autorun'
require 'minitest/pride'
require './lib/paragraph'

class ParagraphTest < Minitest::Test

  def test_it_can_detect_a_paragraph
    paragraph = Paragraph.new
    input = "This is my paragraph, yo.\n"

    result = "<p>This is my paragraph, yo.</p>"

    assert_equal result, paragraph.find_paragraph(input)
  end

  def test_it_can_make_new_html_paragraph
    paragraph = Paragraph.new
    input = "Into the peace and safety of a new dark age.\n"

    result = "<p>Into the peace and safety of a new dark age.</p>\n"

    assert_equal result, paragraph.format_paragraph(input)
  end

  def test_it_formats_emphasized_words
    paragraph = Paragraph.new
    input = "Into the peace and safety of a *new dark age*.\n"

    result = "<p>Into the peace and safety of a <em>new dark age</em>.</p>\n"
    assert_equal result, paragraph.format_word_emp(input)

  def test_it_formats_stronged_words
    paragraph = Paragraph.new
    input = "Into the **peace & safety** of a new dark age.\n"

    result = "<p>Into the <strong>peace &amp; safety</strong> of a new dark age.</p>\n"
    assert_equal result, paragraph.format_word_str(input)
  end
end


# REFACTORED OUT:
# def test_it_can_detect_no_paragraph_exists
#   paragraph = Paragraph.new
#   input = "### The Madness from the Sea"
#
#   result = "### The Madness from the Sea"
#   assert_equal result, paragraph.find_paragraph(input)
# end
