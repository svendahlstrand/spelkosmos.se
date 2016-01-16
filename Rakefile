require 'html/proofer'
require_relative '_lib/vnu'

task :test do |t, args|
  sh 'bundle exec jekyll build'
  checks_to_ignore = args.extras.include?('fast') ? ['VnuCheck', 'LinkCheck'] : []

  HTML::Proofer.new('./_site', empty_alt_ignore: true, check_html: true, only_4xx: true, checks_to_ignore: checks_to_ignore).run
end

task :default => [:test]
