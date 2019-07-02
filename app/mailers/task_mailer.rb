class TaskMailer < ApplicationMailer
  default from: 'user@example.com'

  def creation_mail(task)
    @task = task
    mail(
      subject: 'タスク作成メール',
      to: 'user1@example.com',
      from: 'user2@example.com'
    )
  end
end
