require 'minitest/autorun'
require 'minitest/pride'
require './lib/header'


class HeaderTest < Minitest::Test
  def test_it_can_translate_to_h1_header
    header = Header.new
    input = '# This is an h1 header.'

    result = '<h1>This is an h1 header.</h1>'

    assert_equal result, header.header_h1(input)
  end

  def test_it_can_translate_to_h2_header
    header = Header.new
    input = '## This is an h2 header.'

    result = '<h2>This is an h2 header.</h2>'

    assert_equal result, header.header_h2(input)
  end

  def test_it_can_translate_to_h3_header
    header = Header.new
    input = '### This is an h3 header.'

    result = '<h3>This is an h3 header.</h3>'

    assert_equal result, header.header_h3(input)
  end

  def test_it_can_translate_to_h4_header
    header = Header.new
    input = '#### This is an h4 header.'

    result = '<h4>This is an h4 header.</h4>'

    assert_equal result, header.header_h4(input)
  end

  def test_it_can_translate_to_h5_header
    header = Header.new
    input = '##### This is an h5 header.'

    result = '<h5>This is an h5 header.</h5>'

    assert_equal result, header.header_h5(input)
  end
end
