require 'minitest/autorun'
require 'minitest/pride'
require './lib/markdown_converter'

class MarkdownConverterTest < Minitest::Test

  def test_it_converts_markdown_to_HTML
    markdown_converter = MarkdownConverter.new
    # input = File.readlines('my_input.md')
    input = ["# My Life in Desserts\n",
 "\n",
 "## Chapter 1: The Beginning\n",
 "\n",
 "\"You just *have* to try the cheesecake,\" he said. \"Ever since it appeared in **Food & Wine** this place has been packed every night.\"\n"]

    result = "<h1>My Life in Desserts</h1>\n\n<h2>Chapter 1: The Beginning</h2>\n\n<p>&quot;You just <em>have</em> to try the cheesecake,&quot; he said. &quot;Ever since it appeared in <strong>Food &amp; Wine</strong> this place has been packed every night.&quot;</p>\n"

    actual = markdown_converter.convert(input)
    require "pry"; binding.pry

    assert_equal result, actual
  end
end
