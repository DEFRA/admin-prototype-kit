class ApplicationController < ActionController::Base

  # Adding this before filter here means it is called before every action in
  # every controller in the kit.
  before_filter :check_access_key

  # This is used to protect access to your website when deployed to a public
  # environment like Heroku. If this environment variable has not been
  # set then any one can access the site. If it has then the key will need to
  # be provided either as a url argument or in your cookies. What the key is
  # is up to you!
  # Idea taken from http://stackoverflow.com/a/4840094
  def check_access_key
    # First check if the access_key environment variable has been set. If it
    # hasn't the method will exit and the kit will continue as is.
    key = ENV['ACCESS_KEY']
    return unless key

    # The variable has been set so now we check for it either in the request
    # url as an argument e.g. http://www.yourdomain.com?access_key=random_string
    # or in a cookie. If no match we return the private.html page.
    if request[:access_key] != key && cookies[:access_key] != key
      render file: '/public/private.html'
    elsif request[:access_key] == key
      # The first time a new user hits the site they will need to provide the
      # key as an argument in the URL. Having done that this then creates a
      # permanent cookie so they no longer have to add the argument to the url.
      cookies.permanent[:access_key] = key
    end

    # If we get here its because the user has supplied the correct access key.
    # This means the method will simply exit and the kit will continue as is.
  end
end
