class Project < ApplicationRecord
  belongs_to :introduction
  has_many :users, :through: :project_members, dependent: :destroy
  has_many :project_members, dependent: :destroy
end
