require 'minitest/autorun'
require 'minitest/pride'
require './lib/markdown_converter'

class MarkdownConverterTest < Minitest::Test

  def test_it_can_translate_to_h1_header
    markdown_converter = MarkdownConverter.new
    input = "# This is an h1 header.\n"

    result = "<h1>This is an h1 header.</h1>\n"

    assert_equal result, markdown_converter.formatter.format_header(input)
  end

  def test_it_can_translate_paragraph_to_HTML_syntax
    # skip
    markdown_converter = MarkdownConverter.new
    input = "Translate me to an HTML paragraph.\n"

    result = "<p>Translate me to an HTML paragraph.</p>\n"

    assert_equal result, markdown_converter.formatter.format_paragraph(input)
  end

  def test_it_can_translate_a_header_and_paragraph
    # skip
    markdown_converter = MarkdownConverter.new
    input = ["## I'm a header.\n\n", "I'm a paragraph.\n\n"]

    result = "<h2>I'm a header.</h2>\n<p>I'm a paragraph.</p>\n"
    assert_equal result, markdown_converter.convert(input)
  end

  def test_a_para

  end
end
