class Contact < MailForm::Base
  attribute :nom,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :pseudo,  :captcha  => true

  # Définition du header du mail
  def headers
    {
      :subject => "My Contact Form",
      :to => "your_email@example.org",
      :from => %("#{nom}" <#{email}>)
    }
  end
end