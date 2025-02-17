class Post < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  validates :title, presence: true, length: { in: 4..25 }
  validates :body, presence: true, length: { minimum: 10,
    too_short: "%{count} characters is the minimum allowed" }
  belongs_to :user
end
