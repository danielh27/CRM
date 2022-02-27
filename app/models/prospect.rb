class Prospect < ApplicationRecord
  belongs_to :user

  STATUS = %w[prospect interested client]
end
