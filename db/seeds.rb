p 'Seeding...'

# Create Admin
admin = User.new(email: 'admin@gmail.com', password: 'abc123', password_confirmation: 'abc123', admin: true)
admin.save

# Create Users
user = User.new(email: 'user@gmail.com', password: 'abc123', password_confirmation: 'abc123', type: 'User')
user.save

user2 = User.new(email: 'user2@gmail.com', password: 'abc123', password_confirmation: 'abc123', type: 'User')
user2.save

# Create Trainers
trainer = Trainer.new(email: 'trainer@gmail.com', password: 'abc123', password_confirmation: 'abc123')
trainer.save

trainer2 = Trainer.new(email: 'trainer2@gmail.com', password: 'abc123', password_confirmation: 'abc123')
trainer2.save

# Create Conversations and Messages
conversation = Conversation.create(sender_id: user.id, recipient_id: trainer.id)
conversation.messages.create(body: 'hi trainer', user_id: user.id)

conversation2 = Conversation.create(sender_id: user2.id, recipient_id: trainer2.id)
conversation2.messages.create(body: 'hi trainer2', user_id: user2.id)
