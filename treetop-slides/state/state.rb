require 'treetop'
require 'ostruct'
module State
  class StateNode < Treetop::Runtime::SyntaxNode; end
  class Program < StateNode
    attr_accessor :state
    def self.run code
      Treetop.load 'state'
      parsed = StateParser.new.parse(code).run({}) # state hash begins empty
    end
    def run(state)
      elements.map{|e| e.run(state) }
      state
    end
  end
  class SetNode < StateNode
    def run(state)
      state[var.text_value] = val.v.text_value # v is what is inside dbl qts
    end
  end
  class GetNode < StateNode
    def run(state)
      puts state[var.text_value]
    end
  end
end