require './lib/markdown_converter'

class Chisel

      file = ARGV[0]
      input_file = File.readlines(file)
      markdown_converter = MarkdownConverter.new
      m = markdown_converter.convert(input_file)

end

#
#    output_file = ARGV[1]
#    File.write(output_file, e)
#    puts "Created 'encrypted.txt' with the key #{enigma.key.join.to_i} and date #{enigma.date}"
# end
#
# Encrypt.new
