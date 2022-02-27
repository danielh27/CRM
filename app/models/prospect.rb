class Prospect < ApplicationRecord
  belongs_to :user
  has_many :conversations, dependent: :destroy

  STATUS = %w[prospect interested client]

  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true
  validates :status, presence: true, inclusion: { in: STATUS }
end
