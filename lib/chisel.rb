require './lib/markdown_converter'

class Chisel

  file = ARGV[0]
  input_file = File.readlines(file)
  markdown_converter = MarkdownConverter.new
  m = markdown_converter.convert(input_file)

  output_file = ARGV[1]
  f = File.write(output_file, m)
  line_count = `wc -l "#{output_file}"`.strip.split(' ')[0].to_i
  puts "Converted my_input.markdown (#{line_count} lines) to my_output.html (#{line_count} lines)"
end

#GOOGLE REMINDER: how to count lines in ruby file write
