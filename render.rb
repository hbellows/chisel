require 'redcarpet'

renderer = Redcarpet::Render::HTML.new
engine = Redcarpet::Markdown.new(renderer)
markdown_source = '# This is an H1 header.

## This is an H2 header.

### This is an H3 header.

#### This is an H4 header.

##### This is an H5 header.

-------

##### I: The Horror in Clay.

The most merciful thing in the world, I think, is the inability of the human mind to correlate all its contents. We live on a placid island of ignorance in the midst of black seas of infinity, and it was not meant that we should voyage far. The sciences, each straining in its own direction, have hitherto harmed us little; but some day the piecing together of dissociated knowledge will open up such terrifying vistas of reality, and of our frightful position therein, that we shall either go mad from the revelation or flee from the deadly light into the peace and safety of a new dark age.

Lovecraft, H.P.. The Complete Works of H.P. Lovecraft: 102 Horror Short Stories, Novels, Juvenelia, Collaborations and Ghost Writings (Kindle Locations 7160-7166). BookDar Publishing. Kindle Edition.'

engine.render(markdown_source)
require "pry"; binding.pry
