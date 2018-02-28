class VisitorsController < ApplicationController

  before_action :ensure_authentication_token, only: [:show, :edit, :update, :destroy]

  def index
    user = User.find_by_email(params[:email])

    if user
      redirect_to root_path
    else
      if cookies[:user_stored]
         '/users/Sign_up'
      else
        ensure_authentication_token
        '/'
      end
    end
  end

  # If the user has no access_token, generate one.
  def ensure_authentication_token
      new_token = generate_access_token
      cookies[:user_stored] = { token: :new_token, expires: Time.now + 360000}
      visitor =  Visitor.new({token: generate_access_token})
      visitor.save


  end

  protected

    def generate_access_token

        token = Devise.friendly_token


    end
end



