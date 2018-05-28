require 'minitest/autorun'
require 'minitest/pride'
require './lib/paragraph'

class ParagraphTest < Minitest::Test

  def test_it_can_make_new_html_paragraph
    paragraph = Paragraph.new
    input = "Into the peace and safety of a new dark age.\n"

    result = "<p>Into the peace and safety of a new dark age.</p>"

    assert_equal result, paragraph.paragraph_p(input)
  end

end
