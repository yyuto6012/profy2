class Question < ApplicationRecord
  validates_presence_of :text, :user_id, :group_id
  belongs_to :user
  belongs_to :group
  has_many :answers

end
