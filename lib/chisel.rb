require './lib/header'
require './lib/paragraph'
require './lib/file_read'

class Chisel
  attr_reader :header, :paragraph, :input_file

  def initialize
    @header = Header.new
    @paragraph = Paragraph.new
    @input_file = FileRead.new.markdown_file
  end
end
