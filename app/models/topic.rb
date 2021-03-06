class Topic < ActiveRecord::Base
  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_one :article

  validates :name, presence: true,
                   uniqueness: true
end
