require 'dm-oracle-adapter'
require 'dm-core/spec/setup'

module DataMapper
  module Spec
    module Adapters

      class OracleAdapter < Adapter
        def test_connection
          adapter.select('SELECT 1 FROM dual')
        end
      end

      use OracleAdapter

    end
  end
end
