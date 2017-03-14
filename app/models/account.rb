class Account < ApplicationRecord
  validates :site, :mail, :pass, :pass_confirmation, presence: true
  validates :mail, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
  validates :pass, confirmation: true
end
