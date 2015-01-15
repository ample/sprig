require 'rails/generators/base'

module Sprig
  module Generators
    class InitializerGenerator < Rails::Generators::NamedBase
      source_root File.expand_path("../templates", __FILE__)

      def copy_initializer_file
        copy_file "secure_random_187.rb", "config/initializers/#{file_name}.rb"
      end
    end
  end
end
