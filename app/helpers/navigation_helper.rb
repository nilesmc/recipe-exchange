module NavigationHelper

  def collapsible_links_partial_path
    if webuser_signed_in?
      'layouts/navigation/collapsible_elements/signed_in_links'
    else
      'layouts/navigation/collapsible_elements/non_signed_in_links'
    end
  end

  def body_class
    class_array = [controller_name, action_name]

    if @body_class.present?
      @body_class
    elsif @body_class_piece.present?
      class_array.push(@body_class_pieces).join(' ')
    else
      class_array.join(' ')
    end
  end

end