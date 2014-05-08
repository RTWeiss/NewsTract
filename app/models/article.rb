class Article < ActiveRecord::Base
  belongs_to :topic

  validates :title, presence: true
  validates :summary, presence: true
  validates :topic_id, presence: true,
                       numericality: { only_integer: true, less_than_or_equal_to: 8, greater_than_or_equal_to: 1 }
end