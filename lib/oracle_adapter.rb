require 'do_oracle'
require 'data_objects_adapter'

dir = Pathname(__FILE__).dirname.expand_path / 'oracle_adapter'

require dir / 'adapter'
