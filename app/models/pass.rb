class Pass < ApplicationRecord
  validates :mail, :pass, presence: true
end
