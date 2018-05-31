class Formatter

  def convert(input)
    paragraph = format_body(input)
    # header = format_header(input)
    # paragraph = format_paragraph (header)
    ampersand = format_ampersand(paragraph)
    quote_marks = format_quotation_marks(ampersand)
    strong = format_word_strong(quote_marks)
    emphasis = format_word_emp(strong)
  end

  def format_body(input)
    input.map do |string|
      string = string.strip
      if string.include?('#')
        format_header(string)
      else
        format_paragraph(string)
      end
    end
  end

  def format_header(string)
    octo_count = string.count('#')
    "<h#{octo_count}>" + string.delete('#').strip + "</h#{octo_count}>\n"
  end

  def format_paragraph(string)
    paragraph = "<p>" + string.strip + "</p>\n"
  end

  def format_ampersand(paragraph)
    ampersand = paragraph.map do |string|
      if string.include?('&')
        string.gsub('&', '&amp;')
      else
        string
      end
    end
  end

  def format_quotation_marks(ampersand)
    quote_marks = ampersand.map do |string|
      if string.include?("\"")
        string.gsub("\"", '&quot;')
      else
        string
      end
    end
  end

  def format_word_strong(quote_marks)
    strong = quote_marks.map do |nested|
      find_strong(nested)
    end
  end

  def find_strong(nested)
    nested.split.map do |word|
      if word.start_with?('**')
        word.sub('**', '<strong>')
      elsif word.include?('**')
        word.sub('**', '</strong>')
      else
        word
      end
    end.join(' ') + "\n"
  end

  def format_word_emp(strong)
    emphasis = strong.map do |nested|
      find_emphasis(nested)
    end
  end

  def find_emphasis(nested)
    nested.split.map do |word|
      if word.start_with?('*') && word.end_with?('*')
        "<em>" + word.delete('*') + "</em>"
      elsif word.start_with?('*')
        # require "pry"; binding.pry
        word.sub('*', '<em>')
      elsif word.include?('*')
        # require "pry"; binding.pry
        word.sub('*', '</em>')
      else
        word
      end
    end.join(' ') + "\n"
  end

  def format_list_unordered

  end

  def format_list_ordered

  end
end


# EXTENSION
# def format_blockquote
#
# end
#
# def format_codeblock
#
# end
