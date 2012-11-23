#!/usr/bin/env rake
require "bundler/gem_tasks"

task :update_projekktor do
  rm_rf Dir["/tmp/projekktor", "/tmp/projekktor.zip"]
  sh "curl http://www.projekktorxl.com/api/player/download/format/zip/id/projekktor -o /tmp/projekktor.zip"
  sh "unzip /tmp/projekktor.zip -d /tmp/projekktor"
  rm_rf "vendor/assets"
  mkdir_p "vendor/assets/projekktor"
  mv Dir["/tmp/projekktor/projekktor*.js"].first, "vendor/assets/projekktor/projekktor.js"
  mv "/tmp/projekktor/jarisplayer.swf", "vendor/assets/projekktor/"
  mv Dir["/tmp/projekktor/theme/*.{png,gif}"], "vendor/assets/projekktor/"
  mv "/tmp/projekktor/theme/style.css", "vendor/assets/projekktor/projekktor.css"
end
