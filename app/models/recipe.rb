class Recipe < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :webuser
  belongs_to :category

  def fae_display_field
    title
  end


end
