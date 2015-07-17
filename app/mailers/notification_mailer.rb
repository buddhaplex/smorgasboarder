class NotificationMailer < ActionMailer::Base
  default from: "no-reply@smorgasboarder.com"

  def comment_added
  	mail(to: "ericandrade@gmail.com", subject: "A comment has been added to your place")
  end
end
