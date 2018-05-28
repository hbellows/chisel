file_read.rb: Reads markdown files
 =>File_read has been changed to Chisel, since that's the class running the
 program as a whole

markdown_translator: defines methods that translate markdown to HTML
  =>changed to markdown_converter

file_write: Writes HTML files translated from markdown
  =>This will likely be wrapped up in the Chisel class files

Header class file sets up the find header and header formatter methods

Paragraph class file sets up the find paragraph and paragraph formatter methods
