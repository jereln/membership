class Person < ActiveRecord::Base
  has_many :members
  has_many :groups, :through => :members
end
