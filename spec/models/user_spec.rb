require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid if it has a username and password' do
    user = User.new(
      username: 'test',
      password_digest: 'password'
    )
    expect(user).to be_valid
  end

  it 'has a unique username' do
    user1 = User.create!(
      username: 'test1',
      password_digest: 'password'
    )
    expect{
      User.create!(
        username: 'test1',
        password_digest: 'password'
      )
    }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
