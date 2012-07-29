class TextileFormatter 

  def initialize(text)
    @text_to_render = text
  end

  def to_html
    RedCloth.new(@text_to_render).to_html
  end

end