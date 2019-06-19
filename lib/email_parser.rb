# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email

  @email = []
  def initialize(emails)
    #[] mactch any char in the set
    #The + treat multiple spaces between emails as a single separator.
    @email = emails.split(/[,\s]+/)
    # @email = emails.split(/\s|,/)
  end

  def parse
    @email.uniq
  end
end
