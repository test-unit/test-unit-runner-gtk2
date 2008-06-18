# -*- ruby -*-

require 'rubygems'
gem 'test-unit'
require 'hoe'
require './lib/test/unit/runner/gtk2'

Test::Unit.run = true

version = Test::Unit::Runner::GTK2::VERSION
ENV["VERSION"] = version
Hoe.new('test-unit-runner-gtk2', version) do |p|
  p.developer('Kouhei Sutou', 'kou@cozmixng.org')
  p.developer('Ryan Davis', 'ryand-ruby@zenspider.com')

  p.rubyforge_name = "test-unit"

  p.extra_deps = ["test-unit"]
end

task :tag do
  message = "Released Test::Unit::Runner::GTK+ #{version}!"
  base = "svn+ssh://#{ENV['USER']}@rubyforge.org/var/svn/test-unit/extensions/test-unit-runner-gtk2/"
  sh 'svn', 'copy', '-m', message, "#{base}trunk", "#{base}tags/#{version}"
end

# vim: syntax=Ruby
