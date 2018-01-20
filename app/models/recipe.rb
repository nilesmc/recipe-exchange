class Recipe < ApplicationRecord
  include Fae::BaseModelConcern

  belongs_to :webuser
  belongs_to :category

  validates :title, :category, :webuser, :description, :ingredients, :instructions, presence: true

  def fae_display_field
    title
  end

end
