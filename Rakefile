require 'bundler'
Bundler::GemHelper.install_tasks

desc "Run all specs"
task :spec do
  Dir["spec/**/*_spec.rb"].each do |spec_path|
    system "rspec #{spec_path}"
  end
end