class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contacts_params)

    if @contact.valid?
      redirect_to contacts_new_path, notice: "Tu mensaje fue enviado con éxito."
    else
      render :new
    end
  end

  private

  def contacts_params
    params.require(:contact).permit(:name, :email, :message)
  end

end
