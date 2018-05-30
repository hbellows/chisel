require './lib/header'
require './lib/paragraph'

class MarkdownConverter
  attr_reader :formatter

  def initialize
    @formatter = Formatter.new
  end

  def convert(input)
    x = input.map do |string|
      string = string.strip
      if string.include?('#')
        formatter.format_header(string)
      else
        formatter.format_paragraph(string)
      end
    end.join
  end
end
