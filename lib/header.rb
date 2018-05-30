
MOVED TO FORMATTER CLASS

class Header

  def format_header(input)
    octo_count = input.count('#')
    "<h#{octo_count}>" + input.delete('#').strip + "</h#{octo_count}>\n"
  end
end

#REFACTORED OUT:
# def find_headers(input)
#   if input.include?('#')
#     format_header(input)
#   else
#     input
#   end
# end
