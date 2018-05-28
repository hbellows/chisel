require './lib/header'
require './lib/paragraph'
require './lib/file_read'

class Chisel
  attr_reader :header, :paragraph,

  def initialize
    @header = Header.new
    @paragraph = Paragraph.new
  end
end
