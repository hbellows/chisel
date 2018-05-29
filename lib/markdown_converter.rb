require './lib/header'
require './lib/paragraph'

class MarkdownConverter
  attr_reader :header, :paragraph

  def initialize
    @header = Header.new
    @paragraph = Paragraph.new
  end

  def convert

  end
end
