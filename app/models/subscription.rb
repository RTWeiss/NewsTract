class Subscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic

  validates :topic_id, presence: true,
                       numericality: { only_integer: true, less_than_or_equal_to: 8, greater_than_or_equal_to: 1 }

  validates :user_id, presence: true,
                      numericality: { only_integer: true  }
end

