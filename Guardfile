# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'compass' do
  watch('^src/sass/(.*)\.s[ac]ss')
end

guard 'livereload' do
  watch(%r{.+\.(css|js|html)$})
end

guard 'coffeescript', :input => 'src/coffee', :output => 'src/js'

# This will concatenate the javascript files specified in :files to public/js/all.js
guard :concat, type: "js", files: %w(main acak submenu), input_dir: "src/js", output: "public/js/main"

# guard 'uglify', :destination_file => "public/js/main.js" do
#    watch ('public/js/main.js')
# end

guard 'uglify', :destination_file => "public/js/main.min.js" do
  watch (%r{public/js/main.js})
end
