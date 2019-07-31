# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :email_addresses

    def initialize(string)
        @email_addresses = string
    end

    def parse
        @email_addresses
            .split(/[, ]/)
            .select { |item| item.length > 0}
            .uniq

    end





end
