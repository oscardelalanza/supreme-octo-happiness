class Api::V1::FooController < ApplicationController
  before_action :authenticate_user!
  def index
    render json: {
      message: 'foobar',
      user: current_user
    }, status: :ok
  end
end
