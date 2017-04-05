class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user
  validates_presence_of :body, :conversation_id, :user_id

  def message_time
    created_at.strftime('%d/%m/%y %l:%M %p')
  end

  def mark_as_read
    update_attributes(read: true)
  end
end
