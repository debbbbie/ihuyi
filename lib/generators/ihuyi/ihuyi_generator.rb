require 'rails/generators'
class CloopenGenerator < Rails::Generators::Base

  source_root File.expand_path('../templates', __FILE__)

  def install
    template "ihuyi.rb", "config/initializers/ihuyi.rb"
  end

end
