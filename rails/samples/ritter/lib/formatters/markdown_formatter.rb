require 'redcarpet'

class MarkdownFormatter

  def initialize(attribute_to_format)
    @text_to_render = attribute_to_format
  end

  def to_html
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    markdown.render(@text_to_render)
  end

end