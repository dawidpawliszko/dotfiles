require 'fileutils'

desc "symlink dotfiles"
task :install do
  excluded = ['Rakefile']
  home_dir = ENV['HOME']
  Dir['*'].each do |filename|
    next if excluded.include?(filename)
    source = File.absolute_path(filename)
    target = File.join(home_dir, ".#{filename}")
    next if File.exist?(target)
    FileUtils.ln_s(source, target)
  end
end
task :default => :install
