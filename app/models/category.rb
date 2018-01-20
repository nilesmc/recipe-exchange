class Category < ApplicationRecord
  include Fae::BaseModelConcern

  validates :title, presence: true

  def fae_display_field
    title
  end

  def for_fae_index
    order(:name)
  end

end
