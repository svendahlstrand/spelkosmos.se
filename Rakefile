require 'html/proofer'
require 'colored'
require 'feed_validator'
require_relative '_lib/vnu'

task :test do |t, args|
  should_run_fast = args.extras.include?('fast')

  build_website
  validate_html(should_run_fast)

  validate_rss unless should_run_fast
end

task :default => [:test]

def build_website
  sh 'bundle exec jekyll build'
end

def validate_html(should_run_fast)
  checks_to_ignore =  should_run_fast ? ['VnuCheck', 'LinkCheck'] : []
  HTML::Proofer.new('./_site', empty_alt_ignore: true, check_html: true, only_4xx: true, checks_to_ignore: checks_to_ignore).run
end

def validate_rss
  puts "\nValidating RSS feed...".cyan

  file = File.open('./_site/itunes.rss', 'rb')
  contents = file.read

  v = W3C::FeedValidator.new()
  v.validate_data(contents)

  puts "\nErrors\n".red.bold if v.errors.any?

  v.errors.each do |error|
    puts "  * #{error[:text]} (line #{error[:line]})".red
  end

  puts "\nWarnings\n".yellow.bold if v.warnings.any?

  v.warnings.each do |warning|
    puts "  * #{warning[:text]} (line #{warning[:line]})".yellow
  end

  if v.valid?
    puts "\nRSS looks fine, good work!".green
  else
    raise 'RSS feed is not valid!'
  end
end
