
class EmailParser

  attr_accessor :emails, :name

  def initialize(emails)
    @emails = emails
    @name   = name
  end

  def parse
    emails.split.collect do |name|
      name.split (',')
    end
    .flatten.uniq
  end
end
# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
