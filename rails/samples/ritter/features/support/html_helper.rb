module HtmlHelper

  include ActionView::Helpers::OutputSafetyHelper

  def safe_html(*codes)
    safe_join(codes)
  end

end

World(HtmlHelper)
