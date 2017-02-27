class Account < ApplicationRecord
  validates :site, :mail, :pass, presence: true
  validates :mail, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
end
