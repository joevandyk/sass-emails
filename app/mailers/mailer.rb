class Mailer < ActionMailer::Base
  default_url_options[:host] = "www.example.com"

  def stylesheet_links
  end

  def urls_in_stylesheets
  end

  def image_urls
  end

  def image_tags
  end

  def route_urls
  end
end
