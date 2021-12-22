class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(name: params[:contact][:name], email: params[:contact][:email], message: params[:contact][:message])
    render json: @contact
  end
end
