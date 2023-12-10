require "minitest/autorun"
require_relative "./greetable"

class MockPerson
    include Greetable
end

class TestGreetable < Minitest::Test
    def test_name
        john = MockPerson.new
        john.name = "John"
        
        assert_equal john.name, "John"
    end
end

# RSpec
# let(:john) { MockPerson.new }