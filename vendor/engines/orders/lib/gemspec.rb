#!/usr/bin/env ruby
version = '1.0.1'
raise "Could not get version so gemspec can not be built" if version.nil?
files = Dir.glob("**/*").flatten.reject do |file|
  file =~ /\.gem$/
end

gemspec = <<EOF
Gem::Specification.new do |s|
  s.name              = %q{refinerycms-orders}
  s.version           = %q{#{version}}
  s.date              = %q{#{Time.now.strftime('%Y-%m-%d')}}
  s.summary           = %q{Order handling functionality for the Refinery CMS project.}
  s.description       = %q{Order handling functionality extracted from Refinery CMS to allow you to have a contact form and manage orders in the Refinery backend.}
  s.homepage          = %q{http://refinerycms.com}
  s.email             = %q{info@refinerycms.com}
  s.authors           = ["Resolve Digital"]
  s.require_paths     = %w(lib)

  s.files             = [
    '#{files.join("',\n    '")}'
  ]
  s.require_path = 'lib'

  s.add_dependency('filters_spam', '~> 0.2')
end
EOF

File.open(File.expand_path("../../refinerycms-orders.gemspec", __FILE__), 'w').puts(gemspec)
