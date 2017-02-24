class Account < ApplicationRecord
  validates :mail, :pass, presence: true
end
