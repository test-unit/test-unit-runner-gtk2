require 'test/unit'

module Test
  module Unit
    AutoRunner.register_runner(:gtk2) do |auto_runner|
      require 'test/unit/ui/gtk2/testrunner'
      Test::Unit::UI::GTK2::TestRunner
    end

    module Runner
      module GTK2
        VERSION = "0.0.1"
      end
    end
  end
end
