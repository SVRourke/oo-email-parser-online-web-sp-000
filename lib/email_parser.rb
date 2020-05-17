# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  # def parse
  #   if emails.split(", ")[0] == @emails
  #     emails.split(" ")
  #   else
  #     emails.split(", ")
  #   end
  # end

  def parse
    results = Array.new
    @emails.split(", ").each do |chunk|
      if chunk.include?(" ")
        chunk.split(" ").each {|email| results << email}
      else
        results << chunk
      end
    end
    results
  end
end
# "avi@test.com, arel@test.com test@avi.com, test@arel.com"
