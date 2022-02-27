class Conversation < ApplicationRecord
  belongs_to :prospect

  validates :content, presence: true, length: { minimum: 6 }
end
