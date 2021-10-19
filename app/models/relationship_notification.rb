class RelationshipNotification < ApplicationRecord
  belongs_to :relationship
  belongs_to :user

  def unread_notifications(user)
    targets = user.relationship_notifications.where(read_at: nil)
    notification_lists = []
    # targets.each do ...
    # targetsをグルーピング（5分間隔で1つにまとめる）
    # グルーピングしたobjをnotification_listsに入れる
    # [{obj, obj, obj}, {obj, obj} ... ]
    # return notification_lists
    # ↑で返すlistをcontoroller にてハンドリング（〇〇さん 他n名に....）
  end
end
