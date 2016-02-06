class Instruction < ActiveRecord::Base
  belongs_to :test
  acts_as_tree order: 'created_at'
end
