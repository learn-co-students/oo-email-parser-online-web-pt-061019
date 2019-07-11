class EmailParser

  attr_reader :emails

  def initialize(email_str)
    @emails = email_str
  end

  def parse
    @emails.split(/, | /).uniq
  end
end
