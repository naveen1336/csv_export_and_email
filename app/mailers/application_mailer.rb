class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def send_csv(csv)
  	attachments['you.scv'] = csv

  	mail(:to => "navkumar2245@gmail.com", :subject => "csv check it")

	end
end