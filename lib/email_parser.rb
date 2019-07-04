class EmailParser
  attr_accessor :email

  @email = []
  
  def initialize(emails)
    @email = emails.split(/[,\s]+/)
  end

  def parse
    @email.uniq
  end
end