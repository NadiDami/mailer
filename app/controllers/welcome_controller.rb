class WelcomeController < ApplicationController
  def index
  end

  def send_email
    
    from = params[:email][:from]
    to = params[:email][:to]
    subject = params[:email][:subject]
    message = params[:email][:message]

    mail = Gmailer.create_email to, from, subject, message

    if mail.deliver 
      flash[:notice] = "Email sent"
    else
       flash[:notice] = "Email didn't go anywhere"
    end

    redirect_to '/'

  end
end
