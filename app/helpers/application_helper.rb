require 'navigation_helper.rb'

module ApplicationHelper
  include NavigationHelper

  def markdown(string, options={})
    optional_class ||= options[:class]
    if string.present? && @markdown.present?
      content_tag :div, @markdown.render(string).html_safe, class: "markdown-content #{optional_class}"
    end
  end

end