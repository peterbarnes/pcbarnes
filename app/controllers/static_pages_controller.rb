class StaticPagesController < ApplicationController
  def index
    
  end

  def contact
    
  end

  def about
    
  end

  def projects
    
  end

  def resume
    
  end

  def sendit
    if ContactMailer.email(params).deliver
      flash[:success] = "Your message has been sent, I will get back to you as soon as I can!"
    else
      flash[:danger] = "Something went wrong"
    end
      redirect_to contact_path
  end
end
