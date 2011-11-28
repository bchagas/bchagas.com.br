require 'fileutils'
require 'remarkable/active_record'

CACHE_PATH = Themis::Application.config.action_controller.page_cache_directory

def clear_cache
  FileUtils.rm_rf("#{Rails.public_path}/cache/*")
end
