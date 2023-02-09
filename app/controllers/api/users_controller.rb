class Api::UsersController < ApplicationController
    def index
        # byebug
        @temp = Hash.new
        @users = User.find_by(email: params[:email])
        @temp = {:fullname => "#{@users.first_name} #{@users.last_name}",:age => "#{@users.age}"}
        render json: @temp
    end     
end
