class Restaurant < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :phone, presence: true, uniqueness: true
end
