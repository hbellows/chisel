require './lib/formatter'

class MarkdownConverter
  attr_reader :formatter

  def initialize
    @formatter = Formatter.new
  end

  def convert(input)
    paragraph = formatter.format_body(input)
    ampersand = formatter.format_ampersand(paragraph)
    quote_marks = formatter.format_quotation_marks(ampersand)
    strong = formatter.format_word_strong(quote_marks)
    emphasis = formatter.format_word_emp(strong)
    emphasis.join(' ')
  end


end
