module XPath
  class Expression
    attr_accessor :expression, :arguments
    include XPath::DSL::ExpressionLevel
    include Convertable

    def initialize(expression, *arguments)
      @expression = expression
      @arguments = arguments
    end

    def current
      self
    end
  end
end
