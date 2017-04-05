# Create Admin
admin = User.new(email: 'admin@gmail.com', password: 'abc123', password_confirmation: 'abc123', admin: true)
admin.save

# Create User
user = User.new(email: 'user@gmail.com', password: 'abc123', password_confirmation: 'abc123')
user.save

# Create Trainer
trainer = Trainer.new(email: 'trainer@gmail.com', password: 'abc123', password_confirmation: 'abc123')
trainer.save
