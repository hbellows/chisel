class Formatter

  def format_header(input)
    octo_count = input.count('#')
    "<h#{octo_count}>" + input.delete('#').strip + "</h#{octo_count}>\n"
  end

  def format_paragraph(input)
    "<p>" + input.strip + "</p>\n"
  end

  def format_ampersand(input)
    if input.include?('&')
      input.gsub('&', '&amp;')
  end

  def format_word_emp

  end

  def format_word_strong

  end

  def format_quotation_marks

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
