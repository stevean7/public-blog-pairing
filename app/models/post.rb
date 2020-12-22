# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  has_many :comments
  has_many :ratings
  has_many :items
  validates :title, presence: true

  def self.search(title)
    if title
      where('title LIKE ?', "%#{title}%")
    else
      all
    end
  end

  def mean_rating
    total_score = 0
    ratings.each do |rating|
      total_score += rating.score
    end
    total_score / ratings.count
  end
end
