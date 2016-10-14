# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.precompile += %w( feedstheme/feedstheme_manifest.css indextheme/indextheme_manifest.css usertheme/usertheme_manifest.css questionstheme/questionstheme_manifest.css housetheme/housetheme_manifest.css)
Rails.application.config.assets.precompile += %w( feedstheme/feedstheme_manifest.js indextheme/indextheme_manifest.js usertheme/usertheme_manifest.js questionstheme/questionstheme_manifest.js housetheme/housetheme_manifest.js)

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
