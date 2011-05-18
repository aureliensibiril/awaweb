class AdMailer < ActionMailer::Base
  default :from => "projects@me310-suez.org"
  
  def interest_email(user)
      @user = user
      mail(:to => user.email,
           :subject => "Main Stream : every projects make a difference !")
  end
    
end
