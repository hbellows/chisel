require 'minitest/autorun'
require 'minitest/pride'
require './lib/paragraph'

class ParagraphTest < Minitest::Test

  def test_it_can_make_new_html_paragraph
    paragraph = Paragraph.new
    input = 'This is a paragraph.'

    result = '<p>This is a paragraph.</p>'

    assert_equal result, paragraph.paragraph_p(input)
  end

end
