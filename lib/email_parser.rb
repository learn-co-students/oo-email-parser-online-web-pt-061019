# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
    # @emails = emails.split(/[,\s]/)
    # binding.pry
  end
#
  # def emails
  #   emails.split(/[,\s]/)
  #   emails.delete_if{|string| string.empty?}
  # end
# emails = []

  def parse
    # @emails = emails.split (/[,\s+]/)
    email = @emails.split(/[,\s]/)
      email.delete_if{|string| string.empty?}
    email.uniq
    # binding.pry
  end
    # .uniq! ???
end
