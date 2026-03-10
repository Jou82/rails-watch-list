class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true

  # Validações opcionais para imagem
  validate :correct_image_type, if: -> { photo.attached? }

  private

  def correct_image_type
    if photo.attached? && !photo.content_type.in?(%w[image/jpeg image/jpg image/png image/gif])
      errors.add(:photo, 'must be a JPEG, PNG or GIF')
    end
  end
end
