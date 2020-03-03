# environment file 
# in here loads all files needed to run our app 



require "CohortCLI/version"
require "CohortCLI/cli"
require "CohortCLI/api"


#dependencies
require "pry"
require "httparty"



module CohortCLI
  class Error < StandardError; end
  # Your code goes here...
end
