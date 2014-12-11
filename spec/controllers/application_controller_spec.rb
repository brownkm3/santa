require 'rails_helper'

RSpec.describe ApplicationController, :type => :controller do

  describe "admin_only" do

    let(:user) = User.create(
    it "returns true if the current user is an admin" do

    end

  end
end

  def admin_only
    return true if current_user.admin?
    flash[:alert] = 'You are not authorised to do that.'
    redirect_to root_path
  end

  # TODO: spec for this
  def logged_in_user
    return if logged_in?
    store_location
    redirect_to sessions_new_path, alert: 'Please log in.'
  end

  # TODO: spec for this
  def redirect_back_or(location)
    redirect_to(session[:return_to] || location)
    session.delete(:return_to)
  end

  # TODO: spec for this
  def store_location
    session[:return_to] = request.url if request.get?
  end
