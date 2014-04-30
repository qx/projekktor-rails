#!/usr/bin/env rake
require "bundler/gem_tasks"

task :update_projekktor do
  rm_rf Dir["/tmp/projekktor", "/tmp/projekktor.zip"]
  sh "curl http://www.projekktorxl.com/api/player/download/format/zip/id/projekktor -o /tmp/projekktor.zip"
  sh "unzip /tmp/projekktor.zip -d /tmp/projekktor"
  rm_rf "app/assets"
  mkdir_p "app/assets/projekktor"
  mv Dir["/tmp/projekktor/projekktor*.js"].first, "app/assets/projekktor/projekktor.js"
  mv "/tmp/projekktor/jarisplayer.swf", "app/assets/projekktor/"
  mv Dir["/tmp/projekktor/theme/*.{png,gif}"], "app/assets/projekktor/"

  css_filepath = '/tmp/projekktor/theme/style.css'
  erb_filepath = 'app/assets/projekktor/projekktor.css.erb'
  puts "Compiling #{css_filepath} -> #{erb_filepath}"
  text = File.read(css_filepath).gsub(/url\("([^"]*)"\)/, 'url(<%= asset_path "\1" %>)')
  File.open(erb_filepath, "w") { |file| file.puts text }
end
