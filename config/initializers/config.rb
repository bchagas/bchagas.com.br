Themis::Config = YAML.load_file "#{Rails.root}/config/themis.yml"

%w(default custom).each do |theme| 
  path = ActionView::Base.process_view_paths Rails.root.join("app", "views", "#{theme}")
  ActionController::Base.prepend_view_path path
end
