class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  before_validation :upcase_category
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, :inclusion => {:in => ["CHINESE", "ITALIAN", "JAPANESE", "FRENCH", "BELGIAN"]}

  def upcase_category
    self.category = category.upcase if category.present?
  end
end
