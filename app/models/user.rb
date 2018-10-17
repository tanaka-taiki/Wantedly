class User < ApplicationRecord
  belongs_to :introduction
  has_many :projects, through: :project_members, dependent: :destroy
  has_many :projects_members, dependent: :destroy
  has_many :settings, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
