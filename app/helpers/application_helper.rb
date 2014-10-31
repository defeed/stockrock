# Global helper methods
module ApplicationHelper
  def title
    base_title = 'Stock productivity calculator'
    @title || base_title
  end
end
