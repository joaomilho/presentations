# encoding: utf-8
require File.dirname(__FILE__) + "/../lib/password_checker"

describe PasswordChecker do
  it "'jesus' should not be valid" do
    PasswordChecker.new.check('jesus').should == false
  end
  it "should not validate 'password'" do
    PasswordChecker.new.check('password').should == false
  end
  it "should not validate password size" do
    PasswordChecker.new.check('uni').should == false
  end
  it "qwer should validate" do
    PasswordChecker.new.check('qwer').should == true
  end
  it "qwertyuiopasdf should not validate" do
    PasswordChecker.new.check('qwertyuiopasdf').should == false
  end
  it "111111 should not validate" do
    PasswordChecker.new.check('111111').should == false
  end
  it "aaaaaa should not validate" do
    PasswordChecker.new.check('aaaaaa').should == false
  end
  it "1234 should not validate" do 
    PasswordChecker.new.check("1234").should == false
  end
end
