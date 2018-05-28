class Header

  def find_headers(input)
    if input.include?('#')
      format_header(input)
    else
      input
    end
  end

  def format_header(input)
    octo_count = input.count('#')
    "<h#{octo_count}>" + input.delete('#').lstrip + "</h#{octo_count}>"
  end


end
