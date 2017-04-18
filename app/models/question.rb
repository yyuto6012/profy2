class Question < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :answers
  has_one :feed_content, as: :contentable, dependent: :destroy
  validates_presence_of :text, :user_id, :group_id
  after_create :create_feed_content

  def user_answer(user_id)
    Answer.find_by(user_id: user_id, question_id: id)
  end

  private
  def create_feed_content
    self.feed_content = FeedContent.create(group_id: group_id, updated_at: updated_at)
  end
end
