class Day < ApplicationRecord

  validates :city, presence: true, length: { minimum: 3, maximum: 20 }
  validates :weather, presence: true, length: { minimum: 4, maximum: 200 }
end
