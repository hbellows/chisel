class Formatter
  
  def format_header(input)
    octo_count = input.count('#')
    "<h#{octo_count}>" + input.delete('#').strip + "</h#{octo_count}>\n"
  end

  def format_paragraph(input)
    "<p>" + input.strip + "</p>\n"
  end

  def format_word_amp(input)
    if input.include?('&')
      input.gsub('&', '&amp;')
  end

end
