class Mailer < ActionMailer::Base

  def daily_email(to_email)
    @title = "正文标题"

    mail(
      :to      => to_email,
      :from    => FROM_EMAIL,
      :subject => "邮件的标题"
    ) do |format|
      format.html
    end
  end
end