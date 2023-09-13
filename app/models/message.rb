class Message < ApplicationRecord
    belongs_to :user
    validates :body, presence: true

    def display_username
        user ? user.username : 'Anonymous'
    end
end