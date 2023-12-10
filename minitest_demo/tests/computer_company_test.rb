# 2 groups of testing

# - minitest -> PORO
#   assert_equal @name, "john"

# - rspec -> DSL, bigger community
#   expect(@name).to eq("john")

require_relative "./test_helper"
require_relative "./computer_company"

class TestComputerCompany < Minitest::Test
    def setup
        @john = ComputerCompany::Person.new
        @john.name = "John"
    end

    def test_name
        assert_equal @john.name, "John"
    end

    def teardown
    end
end