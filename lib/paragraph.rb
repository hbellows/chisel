class Paragraph

  def paragraph_p(input)
    new_input = input.strip
    new_input.insert(0, '<p>')
    new_input.insert(-1, '</p>')
  end
end
