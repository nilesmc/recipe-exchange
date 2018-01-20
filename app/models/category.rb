class Category < ApplicationRecord
  include Fae::BaseModelConcern

  has_many :recipes

  validates :title, presence: true

  def fae_display_field
    title
  end

  def for_fae_index
    order(:name)
  end

end
