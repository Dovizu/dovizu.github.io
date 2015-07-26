require 'rake/file_list'
require 'pathname'

###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Ignore Jetbrains files
config[:file_watcher_ignore] += [
    /.iml/,
    /.idea\//,
    /.ipr/,
    /.iws/,
    /.bowerrc/
]

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'assets/stylesheets'
set :js_dir, 'assets/javascripts'
set :images_dir, 'assets/images'

activate :directory_indexes

###
# Bower
###

bower_directory = 'vendor/assets/components'
# Add Bower components to Sprocket
sprockets.append_path File.join root, bower_directory
# # Build search patterns
# patterns = [
#     '.png',  '.gif', '.jpg', '.jpeg', '.svg', # Images
#     '.eot',  '.otf', '.svc', '.woff', '.ttf', # Fonts
#     '.js',                                    # Javascript
# ].map { |e| File.join(bower_directory, "**", "*#{e}" ) }
# Rake::FileList.new(*patterns) do |l|
#   l.exclude(/src/)
#   l.exclude(/test/)
#   l.exclude(/demo/)
#   l.exclude { |f| !File.file? f }
# end.each do |f|
#   # Import relative paths
#   sprockets.import_asset(Pathname.new(f).relative_path_from(Pathname.new(bower_directory)))
# end

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

###
# Deployment
###

activate :deploy do |deploy|
  deploy.method = :git
  # Optional Settings
  # deploy.remote   = 'custom-remote' # remote name or git url, default: origin
  deploy.branch   = 'master' # default: gh-pages
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  # deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end