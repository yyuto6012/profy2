class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_one :feed_content, as: :contentable, dependent: :destroy
  after_create :create_feed_content

  private
  def create_feed_content
    self.feed_content = FeedContent.create(group_id: question.group_id, updated_at: updated_at)
  end
end
