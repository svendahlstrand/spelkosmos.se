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
  puts ''
  puts 'Validating RSS feed'.cyan

  file = File.open("./_site/itunes.rss", "rb")
  contents = file.read

  v = W3C::FeedValidator.new()
  v.validate_data(contents)

  v.errors.each do |error|
    puts "#{error[:type]} (Line #{error[:line]})".red
    puts "#{error[:text]}".red
    puts ""
  end

  v.warnings.each do |warning|
    puts "#{warning[:type]} (Line #{warning[:line]})".yellow
    puts "#{warning[:text]}".yellow
    puts ""
  end

  if !v.valid?
    raise 'RSS feed is not valid!'
  end
end
