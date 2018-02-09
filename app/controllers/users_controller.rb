class UsersController < ApplicationController
  def index
    @core_info = {
      gender: '',
      married: false,
      age: 0,
      home_owner: false
    }

    @what_i_own = {
      overview: {
        bank: 213,
        superannuation: 123,
        shares: 12,
        property: 12,
        debt: 12
        other: 12
      },
      complex: {
        banks: [],
        superannuations: [],
        sharess: [],
        properties: [],
        other_debts: [],
        all_others: []
      }
    }
  end
end
