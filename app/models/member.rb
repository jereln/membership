class Member < ActiveRecord::Base
    validates_uniqueness_of :group_id, :scope => :person_id
    belongs_to :person
    belongs_to :group
end
