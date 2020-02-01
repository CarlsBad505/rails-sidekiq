class Endangered < ApplicationRecord
  validates :name, :icun, presence: true
end
