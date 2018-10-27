class Introduction < ApplicationRecord
  belongs_to :user
  has_many :school_historys, dependent: :destroy
  has_many :seminars, dependent: :destroy
  has_many :clubs, dependent: :destroy
  has_many :work_historys, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :skill, dependent: :destroy
  has_many :languages, dependent: :destroy
  has_many :award_historys, dependent: :destroy
  has_many :writing_historys, dependent: :destroy
  has_many :portfolios, dependent: :destroy
  has_many :youtubes, dependent: :destroy
  has_many :topics, dependent: :destroy
  has_many :informations, dependent: :destroy
end
