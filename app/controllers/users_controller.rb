class UsersController < ApplicationController
  def index
    @core_info = {
      gender: '',
      married: false,
      age: 0,
      home_owner: false
    }
  end
end
