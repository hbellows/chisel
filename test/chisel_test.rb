require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'


class ChiselTest < Minitest::Test

  def test_it_can_translate_to_h1_header
    chisel = Chisel.new
    input = "# This is an h1 header."

    result = "<h1>This is an h1 header.</h1>"

    assert_equal result, chisel.header.header_h4(input)
  end

  def test_it_can_translate_paragraph_to_HTML_syntax
    chisel = Chisel.new
    input = "Translate me to an HTML paragraph.\n"

    result = "<p>Translate me to an HTML paragraph.</p>"
    
    assert_equal result, chisel.paragraph.paragraph_p(input)
  end
end
