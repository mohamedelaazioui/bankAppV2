class WelcomeController < ApplicationController
  before_filter :authenticate_client!, except: [:index, :agencies]


  def index
  end

  def agencies
  end

  def dashboard
  end

  private
  def choose_layout
    client_signed_in? ? 'angular' : 'application'
  end
end
