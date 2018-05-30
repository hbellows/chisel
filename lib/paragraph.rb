class Paragraph

  def format_paragraph(input)
    "<p>" + input.strip + "</p>\n"
  end

  def format_word_amp(input)
    if input.include?('&')
      input.gsub('&', '&amp;')


  end
end

#SECOND REFACTOR:
# def find_paragraph(input)
#   if input.start_with?('#') == false
#     format_paragraph(input)
#   else
#     input
#   end
# end

#FIRST REFACTOR:
# new_input = input.strip
# new_input.insert(0, '<p>')
# new_input.insert(-1, '</p>')
