class HacoGenerator < Rails::Generators::Base
  desc "This generator creates files blablabla..."
  source_root File.expand_path("../haco/templates", __FILE__)

  def create_top_page_controller_file
    copy_file "top_controller_template.rb", "app/controllers/top_controller.rb"
  end

  def create_top_page_view_file
    copy_file "top_view_template.html.erb", "app/views/top/index.html.erb"
  end

  def delete_default_public_index_html
    remove_file "public/index.html"
  end

  def edit_config_routes_file
    route("root :to => 'top#index'")
  end
end
