class ContactMailer < ActionMailer::Base
  default from: "contact@pcbarnes.com"

  def email(params)
    @params = params
    mail(to: 'barnespeter213@gmail.com', subject: "#{@params[:name]} has sent you an email")
  end
end
