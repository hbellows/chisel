require 'minitest/autorun'
require 'minitest/pride'
require './lib/formatter'

class FormatterTest < Minitest::Test

  def test_it_can_format_headers
    # skip
    formatter = Formatter.new
    input_1 = ["# This is an h1 header."]
    input_2 = ["### This is an h3 header."]

    result_1 = ["<h1>This is an h1 header.</h1>\n"]
    result_2 = ["<h3>This is an h3 header.</h3>\n"]

    assert_equal result_1, formatter.format_body(input_1)
    assert_equal result_2, formatter.format_body(input_2)
  end

  def test_it_can_make_new_html_paragraph
    # skip
    formatter = Formatter.new
    input = ["Into the peace and safety of a new dark age.\n"]

    result = ["<p>Into the peace and safety of a new dark age.</p>\n"]

    assert_equal result, formatter.format_body(input)
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
    # skip
    formatter = Formatter.new
    input = ["Into the **peace and safety** of a new dark **age**.\n"]

    result = ["Into the <strong>peace and safety</strong> of a new dark <strong>age</strong>.\n"]
    assert_equal result, formatter.format_word_strong(input)
  end
end
