class Contact < ApplicationRecord
    #VALIDATIONS
    validates :name, :email, :presence => true
    validates :name, length: {minimum: 3, maximum: 50}
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    #Solo para desarrollo
    validates :email, uniqueness: true

    after_validation :email_send, only: [:create]

    def email_send
        ContactMailer.email_send(self).deliver_now
    end


end
