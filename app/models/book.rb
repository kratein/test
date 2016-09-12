class Book < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: {
    message: "Le titre du livre est obligatoire."
  }
  validates :title, uniqueness: {
    message: "Le titre du livre doit être unique."
  }

  scope :french, -> { where(category_id: 1) }
end
