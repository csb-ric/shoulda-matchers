require_relative 'rails_version_helpers'

module AcceptanceTests
  module NUnitHelpers
    include RailsVersionHelpers

    def default_test_framework
      if rails_version >= 4
        :minitest_5
      else
        :test_unit
      end
    end
  end
end
