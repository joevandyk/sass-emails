require 'test_helper'

class MailerTest < ActionMailer::TestCase
  test "stylesheet links" do
    p Mailer.stylesheet_links.body
  end

  test "urls in stylesheets" do
    p Mailer.urls_in_stylesheets.body
  end

  test "image urls" do
    p Mailer.image_urls.body
  end

  test "image tags" do
    p Mailer.image_tags.body
  end

  test "route urls" do
    p Mailer.route_urls.body
  end
end
