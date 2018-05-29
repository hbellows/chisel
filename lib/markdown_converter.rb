require './lib/header'
require './lib/paragraph'

class MarkdownConverter
  attr_reader :header, :paragraph

  def initialize
    @header = Header.new
    @paragraph = Paragraph.new

  end

  def convert(input)
    x = input.map do |string|
      string = string.strip
      if string.include?('#')
        header.format_header(string)
      else
        paragraph.format_paragraph(string)
      end
    end.join
  end
end
