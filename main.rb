require 'gosu'
# load everything in the lib and src directories
['lib', 'src'].each do |dir|
  Dir[File.dirname(__FILE__) + "/#{dir}/*.rb"].each do |file|
    puts "loading #{file}"
    require file[0..-4] # strips off the '.rb' from the end
  end
end
puts 'done'

Game.new.show
