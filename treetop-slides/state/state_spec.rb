require 'state'
describe State do
  
  it "should set var" do
    State::Program.run('set x "Foo"')
  end
  
  it "should get var" do
    State::Program.run('get x')
  end

  it "should set & get var" do
    State::Program.run('set x "Foo" get x')
  end

end