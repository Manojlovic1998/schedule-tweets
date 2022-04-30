class RegistrationsController < ApplicationController
  def new
    # Instance var, visible in views
    @user = User.new

  end
end