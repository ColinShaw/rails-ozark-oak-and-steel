# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w(   normalize.css 
                                                    foundation.css 
                                                    font-awesome.css 
                                                    flexnav.css 
                                                    layout.css 
                                                    red.css 
                                                    jackbox.css 
                                                    user.css )
Rails.application.config.assets.precompile += %w(   modernizr.js 
                                                    jquery.js 
                                                    foundation.min.js 
                                                    jquery.onepagenav.js 
                                                    plugins.js 
                                                    jquery.themepunch.plugins.min.js 
                                                    jquery.address-1.5.min.js 
                                                    Jacked.js 
                                                    jackbox-swipe.js 
                                                    jackbox.js 
                                                    jquery.mousewheel-3.0.6.pack.js 
                                                    fastclick.js 
                                                    custom.js )


   