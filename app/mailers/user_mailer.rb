class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def invite_hotel(email)
    @email = email
    mail(:to => @email,:subject => "Invitation for Hot-Tab-Book.com")
  end
end
