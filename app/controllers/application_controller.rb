class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Config for ActsAsTaggableOn gem
  # For removing unused tags
  ActsAsTaggableOn.remove_unused_tags = true
  # Forces all tags to be lowercase
  ActsAsTaggableOn.force_lowercase = true
  # Can use comma or space as tag separator
  ActsAsTaggableOn.delimiter = [',', ' ']
end
