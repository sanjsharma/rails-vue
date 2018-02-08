module ApplicationHelper
  def javascript_file?(name)
    File.exists?("#{Rails.root}/app/assets/javascripts/#{name}.js") ||
      File.exists?("#{Rails.root}/app/assets/javascripts/#{name}.coffee")
  end

  def stylesheets_file?(name)
    File.exists?("#{Rails.root}/app/assets/stylesheets/#{name}.css") ||
      File.exists?("#{Rails.root}/app/assets/stylesheets/#{name}.scss")
  end
end
