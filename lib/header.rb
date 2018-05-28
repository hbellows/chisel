class Header

  def header_h1(input)
# require "pry"; binding.pry
    new_input = input.gsub('# ', '<h1>')
    new_input.insert(-1, '</h1>')
  end

  def header_h2(input)
    new_input = input.gsub('## ', '<h2>')
    new_input.insert(-1, '</h2>')
  end

  def header_h3(input)
    new_input = input.gsub('### ', '<h3>')
    new_input.insert(-1, '</h3>')
  end

  def header_h4(input)
    new_input = input.gsub('#### ', '<h4>')
    new_input.insert(-1, '</h4>')
  end

  def header_h5(input)
    new_input = input.gsub('##### ', '<h5>')
    new_input.insert(-1, '</h5>')
  end

end
