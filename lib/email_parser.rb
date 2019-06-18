class EmailParser
  
def initialize(emails)
    @emails = emails
end  
  
def parse
  
  array = @emails.split(", ")
  if array.length==1
    return @emails.split(" ")
  elsif  array.length > 2 
    space_array = @emails.split(/,| /)
    space_array = space_array.reject { |c| c.empty? }
    return space_array
  end
  array.uniq
end  

end







# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
