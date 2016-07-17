class ProfilesController < ApplicationController
  def update
    @user = current_user
    if @user.update_attributes(profile_params)
      redirect_to dashboard_path(locale: @user.default_locale)
    else
      # TODO: fix me, no edit
      render :edit
    end
  end

  private

  def profile_params
    params.require(:user).permit(*%i(default_locale email name password time_zone))
  end
end
