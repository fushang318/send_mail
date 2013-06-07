require './lib/send_mail'

emails_path = File.expand_path('../email.list',__FILE__)
count = 0
File.open(emails_path, 'r') do |f|
  f.each_line do |line|
    count += 1
    p "正在发送第 #{count} 封邮件"
    email = line.gsub(/\r?\n/,"")
    daily_email = Mailer.daily_email(email)
    puts daily_email
    daily_email.deliver
  end
end
