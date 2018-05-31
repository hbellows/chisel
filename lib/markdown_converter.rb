require './lib/formatter'

class MarkdownConverter
  attr_reader :formatter

  def initialize
    @formatter = Formatter.new
  end

  def convert(input)
    header = formatter.format_header(input)
    paragraph = formatter.format_paragraph (header)
    ampersand = formatter.format_ampersand(paragraph)
    quote_marks = formatter.format_quotation_marks(strong)
    emphasis = formatter.format_word_emp(ampersand)
    strong = formatter.format_word_strong(emphasis)
  end

  # def convert(input)
  #   input.map do |string|
  #     string = string.strip
  #     if string.include?('#')
  #       formatter.format_header(string)
  #     else
  #       formatter.format_paragraph(string)
  #     end
  #   end.join
  # end
end
