require 'minitest/autorun'
require 'minitest/pride'
require './lib/markdown_converter'

class MarkdownConverterTest < Minitest::Test

  def test_it_can_translate_to_h1_header
    markdown_converter = MarkdownConverter.new
    input = "# This is an h1 header."

    result = "<h1>This is an h1 header.</h1>"

    assert_equal result, markdown_converter.header.find_headers(input)
  end

  def test_it_can_translate_paragraph_to_HTML_syntax
    markdown_converter = MarkdownConverter.new
    input = "Translate me to an HTML paragraph.\n"

    result = "<p>Translate me to an HTML paragraph.</p>"

    assert_equal result, markdown_converter.paragraph.find_paragraph(input)
  end

  def test_it_can_translate_a_header_and_paragraph
    markdown_converter = MarkdownConverter.new
    input = "## I'm a header.\n" "I'm a paragraph.\n"

    result = "<h2>I'm a header.</h2>" "<p>I'm a paragraph.</p>"
    assert_equal result, markdown_converter.convert
  end
end
