class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(name: params[:contact][:name], email: params[:contact][:email], message: params[:contact][:message])
    
    if @contact.valid?
      redirect_to contacts_new_path, alert: "*Mensaje enviado con éxito."
    else
      redirect_to contacts_new_path, alert: "*Ingrese un email válido."
    end  
  end


end
