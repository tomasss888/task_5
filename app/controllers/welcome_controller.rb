# frozen_string_literal: true

# contacts controller
class WelcomeController < ApplicationController
  # intializes rules before everything
  before_action :rules_accept

  def index; end

  # runs only once when the project is launched(don't need to accept rules multiple times)
  def rules_accept
    if defined?($var).nil?
      render 'welcome/rules'
      $var = true
    end
  end

  # after pressing button (accepting rules) you're redirected to the main page
  def accepted_rules
    render 'welcome/index'
  end
end
