class Portfolio < ApplicationRecord
  belongs_to :introduction
  mount_uploader :image, ImageUploader
end
