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

    result = "<p>Into the peace and safety of a new dark age.</p>"

    assert_equal result, paragraph.format_paragraph(input)
  end

end
