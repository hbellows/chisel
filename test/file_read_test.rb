require 'minitest/autorun'
require 'minitest/pride'
require './lib/file_read'

class FileReadTest < Minitest::Test

  def test_a_file_can_be_read
    file = FileRead.new('I\'m a file')

    assert_equal 'I\'m a file', file
  end
end
