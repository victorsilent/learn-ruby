class Person < ActiveRecord::Base
  has_many :pets, dependent: :destroy
  has_one :love, dependent: :destroy
  accepts_nested_attributes_for :love
end
