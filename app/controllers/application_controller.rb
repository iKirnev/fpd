class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    @left_nav_data = {uses: Use.all, stuffs: Stuff.all}
    render template: 'application'
  end

end
