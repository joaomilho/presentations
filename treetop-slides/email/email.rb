require 'rubygems'
require 'treetop'
class Email
  def self.parse email
    Treetop.load "email"
    p = EmailParser.new
    p.parse(email)
  end
end