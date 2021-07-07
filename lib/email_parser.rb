# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails 
  
  def initialize(emails)
    @emails = emails 
  end 
  
  def parse
    @emails.split(/\s|,|,/).reject { |x| x.empty?}.uniq 
  end 
end 