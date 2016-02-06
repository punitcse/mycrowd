class Test < ActiveRecord::Base
  enum application_type: [:single_page, :website, :ios, :android]
  enum state: [:new_state, :running_state]

  belongs_to :user
  has_many :instructions

  accepts_nested_attributes_for :instructions, allow_destroy: true

end
