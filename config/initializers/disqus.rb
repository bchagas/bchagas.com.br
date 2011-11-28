Disqus::defaults.merge! :account => Themis::Config['disqus']['account'], 
                        :developer => Rails.env == 'development' 
