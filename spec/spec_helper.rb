require 'simplecov'

SimpleCov.start do
  add_filter "/spec/"
end

Dir.glob(File.join( "lib", "**", "*.rb")) do |fn| 

  #puts "requiring #{ fn }"
  require_relative  "../#{fn}" 
end



SimpleCov.at_exit do
  SimpleCov.result.format!
end
