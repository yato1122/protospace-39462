class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @username = user.username
    @prototypes = user.prototypes
    @profile = user.profile
    @position = user.position
    @occupation = user.occupation
  end

end
