source 'https://rubygems.org'

gem 'jekyll'
gem "webrick", "~> 1.7"

group :jekyll_plugins do
  gem 'jekyll-sitemap'
end

group :test do
  # FIXME: Temporary workaround for Apple Silicon Macs.
  gem 'ethon', github: 'typhoeus/ethon'

  gem 'colored'
  gem 'feedvalidator'
  gem 'html-proofer'
  gem 'rake'
  gem 'ruby-vnu'
end
