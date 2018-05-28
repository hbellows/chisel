class Paragraph

  def find_paragraph(input)
    if input.start_with?('#') == false
      format_paragraph(input)
    else
      input
    end
  end

  def format_paragraph(input)
    "<p>" + input.strip + "</p>"
  end
end


# new_input = input.strip
# new_input.insert(0, '<p>')
# new_input.insert(-1, '</p>')
