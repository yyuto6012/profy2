class FeedContent < ApplicationRecord
  belongs_to :contentable, polymorphic: true
  belongs_to :group
end
