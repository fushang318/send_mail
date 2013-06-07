使用说明
=========

安装
======
```
bundle install
```

配置
======
```
1 把邮箱列表放入 email.list 文件
2 在 config.yaml 文件中配置邮件服务的参数 
3 修改 lib/send_mail/mailer.rb
4 修改 views/mailer/daily_email.html.haml
```

发送
=====
```
bundle exec ruby send.rb
```