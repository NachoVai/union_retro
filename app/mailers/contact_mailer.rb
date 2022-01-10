class ContactMailer < ApplicationMailer
    def email_send(contact)
        @contact = contact
        mail to: contact.email, subject: "Gracias por contactarte con nosotros.", from: "union_retro@example.com"
    end
end
