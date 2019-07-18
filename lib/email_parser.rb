# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :email_input
  @@all = []

  def initialize(emails) #creating a new instance of the email parser Class such that the attribute defined earlier (email_input) = the string of emails i feed the .new method
    @email_input = emails
    @@all << self
  end

  def self.all
    @@all
  end

  def parse()
    array = self.email_input.split(/, | /)
    array.uniq
  end

end
