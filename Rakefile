# frozen_string_literal: true
require 'html-proofer'
require 'colored'
require_relative 'lib/vnu'
require_relative 'lib/podcast_review'

task :test do |_, args|
  should_run_fast = args.extras.include?('fast')
  should_include_drafts = args.extras.include?('drafts')

  build_website(should_include_drafts)
  validate_html(should_run_fast)
end

task default: [:test]

task :update_reviews do
  reviews = PodcastReview.all_from_itunes(1074034373)
  File.write('_data/reviews.json', JSON.pretty_generate(reviews))
end

def build_website(should_include_drafts)
  cmd = 'bundle exec jekyll clean && bundle exec jekyll build'
  cmd += ' --drafts --unpublished --future' if should_include_drafts

  sh cmd
end

def validate_html(should_run_fast)
  checks_to_ignore = should_run_fast ? %w(VnuCheck LinkCheck) : %w(HtmlCheck)

  HTMLProofer.check_directory('./_site',
                              empty_alt_ignore: true,
                              check_html: true,
                              only_4xx: true,
                              ignore_status_codes: [403],
                              checks_to_ignore: checks_to_ignore
                             ).run
end
