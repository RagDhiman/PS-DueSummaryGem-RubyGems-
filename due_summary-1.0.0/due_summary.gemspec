# Gem specification file for duesummary gem

Gem::Specification.new do |s|
  # Required attributes:
  s.name = 'due_summary'
  s.version = '1.0.0'
  s.summary = 'Due summary for a given date!'
  s.authors = ['Rag Dhiman']
  s.files = ['LICENSE', 'README.rdoc', 'Rakefile', 'due_summary.gemspec', 'lib/due_summary.rb', 'lib/due_summary/duetext.rb']
  # Additional attributes that are recommended:
  s.description = 'Due summary for a given date including months, days and years till the date!'
  s.email = 'rubycoder@example.com'
  s.homepage = 'https://rubygems.org/gems/example'
  #s.license =
  s.metadata = { 'source_code_uri' => 'https://github.com/RagDhiman/PS-DueSummaryGem-RubyGems-' }
  # Dependency information:
  s.add_runtime_dependency 'colorize', '~> 0.8.1'
  s.add_runtime_dependency 'tabulate', '~> 0.1.2'
end
