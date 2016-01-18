require 'html/proofer'
require 'colored'
require 'feed_validator'
require_relative '_lib/vnu'

task :test do |t, args|
  sh 'bundle exec jekyll build'
  checks_to_ignore = args.extras.include?('fast') ? ['VnuCheck', 'LinkCheck'] : []

  HTML::Proofer.new('./_site', empty_alt_ignore: true, check_html: true, only_4xx: true, checks_to_ignore: checks_to_ignore).run
  validate_rss
end

task :default => [:test]

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
end
