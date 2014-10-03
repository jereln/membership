class Group < ActiveRecord::Base
  has_many :members
  has_many :persons, through: :members
end
