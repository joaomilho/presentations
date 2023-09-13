describe Email do
  it "should parse my email" do
    Email.parse("juanmaiz@gmail.com").should == true  
  end
end