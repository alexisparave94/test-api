class Company < ApplicationRecord
  has_one_attached :logo
  has_one_attached :cv
end
