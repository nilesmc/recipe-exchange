class Category < ApplicationRecord
  include Fae::BaseModelConcern

  def fae_display_field
    title
  end

  def for_fae_index
    order(:name)
  end

end
