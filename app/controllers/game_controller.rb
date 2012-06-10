class GameController < ApplicationController
  prepend_before_filter :mock_current_user,           :only => [:please_login]
  prepend_before_filter :force_user_reload!,          :only => [:index, :log_invitation]
  prepend_before_filter :redirect_unless_in_facebook, :only => [:index]

  def index
    @offense = Offense.new
  end


  def please_login
    render :text => 'please log in to facebook...'
  end

  def log_invitation
    params[:invited_users].each do |invited_user_id|
      Invitation.create(:user_id => current_user.id, :request_id => params[:request_id], :guest_id => invited_user_id)
    end
    head :ok
  end



 protected

  def mock_current_user
    @current_user = User.new
  end

  def redirect_unless_in_facebook
    redirect_to 'https://apps.facebook.com/offensive/' and return  if params[:signed_request].nil?
    redirect_to please_login_url and return                        if current_facebook_user.nil?
  end

end
