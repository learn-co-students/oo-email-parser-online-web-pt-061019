class EmailParser

  attr_accessor :emails

  def initialize(email_str)
    @emails = email_str
  end

  def parse
    @emails.split(/,/||/\s/).map {|w| w.strip}
  end
end
