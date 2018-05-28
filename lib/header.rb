class Header

  def format_header(input)
    # require "pry"; binding.pry
    octo_count = input.count('#')
    "<h#{octo_count}>" + input.delete('#').lstrip + "</h#{octo_count}>"
  end
end
