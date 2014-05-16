class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Dziękuje za wiadomość. Odpowiedz nadejdzie tak szybko, jak to tylko będzie możliwe.'
    else
      flash.now[:error] = 'Nie można wysłać wiadomości'
      render :new
    end
  end
end