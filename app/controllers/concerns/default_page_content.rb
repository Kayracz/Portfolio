module DefaultPageContent
  extend ActiveSupport::Concern

 included do
    before_action :set_page_defaults
  end

  def set_page_defaults
   @page_title = "Kayra's Portfolio | My portfolio Website"
   @seo_keywords = "Kayra Czerniewicz"
  end
end
