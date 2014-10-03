class Member < ActiveRecord::Base
  validates :group_id, uniqueness: { scope: :person_id }
  belongs_to :person
  belongs_to :group
end
