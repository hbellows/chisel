file_read.rb: Reads markdown files
 =>File_read has been changed to Chisel, since that's the class running the
 program as a whole

markdown_translator: defines methods that translate markdown to HTML
  =>changed to markdown_converter

file_write: Writes HTML files translated from markdown
  =>This will likely be wrapped up in the Chisel class files

Header class file sets up the find header and header formatter methods

Paragraph class file sets up the find paragraph and paragraph formatter methods

blockquotes: <blockquote><p>blah blah blah</p></blockquote>
emphasis: <em>blah</em>
strong: <strong>blah blah</strong>
ampersand: &amp;
Double quote: &quot;

code block: 
    <p>This is a normal paragraph:</p>

    <pre><code>This is a code block.
    </code></pre>

**unordered list:**
    <p>
      My favorite cuisines are:
    </p>

    <ul>
      <li>Sushi</li>
      <li>Barbeque</li>
      <li>Mexican</li>
    </ul>

**ordered list:**
    <p>
      My favorite cuisines are:
    </p>

    <ol>
      <li>Sushi</li>
      <li>Barbeque</li>
      <li>Mexican</li>
    </ol>
