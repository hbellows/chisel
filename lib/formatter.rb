class Formatter

  def convert(input)
    header = format_header(input)
    paragraph = format_paragraph (header)
    ampersand = format_ampersand(paragraph)
    quote_marks = format_quotation_marks(ampersand)
    emphasis = format_word_emp(quote_marks)
    strong = format_word_strong(emphasis)
  end

  def format_header(input)
    header = input.map do |string|
      if string.include?('#')
        octo_count = string.count('#')
        "<h#{octo_count}>" + string.delete('#').strip + "</h#{octo_count}>\n"
      else
        string
      end
    end
  end

  def format_paragraph(header)
    #THIS NEEDS ENUM, MAYBE NEEDS TO MOVE TO END
    paragraph = header.map do |string|
    "<p>" + string.strip + "</p>\n"
    end
    # if starts and ends with (" ) / ( ")
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

  def format_word_emp(quote_marks)
    emphasis = quote_marks.map do |nested|
      find_emphasis(nested)
    end
  end

  def find_emphasis(nested)
    nested.split.map do |word|
      if word.start_with?('*')
        word.sub('*', '<em>')
      elsif word.include?('*')
        word.sub('*', '</em>')
      else
        word
      end
    end.join(' ') + "\n"
  end

  def format_word_strong(emphasis)
    strong = emphasis.map do |nested|
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
