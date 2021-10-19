class Relationship < ApplicationRecord
  has_one :relationship_notification, dependent: :destroy
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  validates :follower_id, presence: true
  validates :followed_id, presence: true

  after_create_commit :create_notification

  def create_notification
    RelationshipNotification.create(relationship_id: self.id, user_id: self.follower_id)
  end

end