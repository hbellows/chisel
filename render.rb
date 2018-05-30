require 'redcarpet'

renderer = Redcarpet::Render::HTML.new
engine = Redcarpet::Markdown.new(renderer)
markdown_source =
# My Life in Desserts

## Chapter 1: The Beginning

"You just *have* to try the cheesecake," he said. "Ever since it appeared in **Food & Wine** this place has been packed every night."

engine.render(markdown_source)
require "pry"; binding.pry
