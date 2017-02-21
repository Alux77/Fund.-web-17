class User < ActiveRecord::Base

  include ActiveModel::Validations

    validates_uniqueness_of :name, :email, :password, message: ': already asigned'
    validates_length_of :name, :minimum => 2, message: ': 2 characters minimum'
    validates_length_of :password, :minimum => 4, message: ': 4 characters minimum please'
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: ': incorrect!!' }
    validates_confirmation_of :email, :password, message: ': doesn´t match'

  def self.authenticate(email, password)

    if self.exists?(email: email)
      user = self.find_by(email: email)
        if password == user.password
          user
        else
          nil
        end
    end
  end

  def round
    self.total_rounds *=1
    self.save
  end

  def score
    self.total_score = right - wrong
    self.save
  end

end