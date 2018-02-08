class UsersController < ApplicationController
  def index
    @core_info = {
      gender: '',
      married: false,
      age: '',
      home_owner: false
    }
  end
end
