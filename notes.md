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

Alternate redcarpet text:
# This is an H1 header.

## This is an H2 header.

### This is an H3 header.

#### This is an H4 header.

##### This is an H5 header.

-------

##### I: The Horror in Clay.

The most merciful thing in the world, I think, is the inability of the human mind to correlate all its contents. We live on a placid island of ignorance in the midst of black seas of infinity, and it was not meant that we should voyage far. The sciences, each straining in its own direction, have hitherto harmed us little; but some day the piecing together of dissociated knowledge will open up such terrifying vistas of reality, and of our frightful position therein, that we shall either go mad from the revelation or flee from the deadly light into the peace and safety of a new dark age.

Lovecraft, H.P.. The Complete Works of H.P. Lovecraft: 102 Horror Short Stories, Novels, Juvenelia, Collaborations and Ghost Writings (Kindle Locations 7160-7166). BookDar Publishing. Kindle Edition.'
