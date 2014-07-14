class StaticPagesController < ApplicationController
  def software
    
  end

  def music
    render layout: "music_layout"
  end

  def sendit
    if ContactMailer.email(params).deliver
      flash[:success] = "Your message has been sent, I will get back to you as soon as I can!"
    else
      flash[:danger] = "Something went wrong"
    end
      redirect_to root_url
  end
end
