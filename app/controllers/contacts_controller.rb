class ContactsController < ApplicationController
  def index
    @contact = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to contacts_path, notice: "Done!"
    else
      render :new
    end
  end

  def create_table
    Contact.create(name: params[:contact][name], email: params[:contact][:email], content: params[:contact][:content])
    refirect_to new_contact_path
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end