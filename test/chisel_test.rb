require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'


class ChiselTest < Minitest::Test
  def test_it_exists
    chisel = Chisel.new

    result = '<H1>This is an H1 header.</H1>'

    assert_equal result, chisel.header_h1('# This is an H1 header.')
  end
end
