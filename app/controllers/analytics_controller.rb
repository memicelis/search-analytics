# frozen_string_literal: true

class AnalyticsController < ApplicationController
  def index
    @searches = current_user.searches.order(created_at: :desc)
  end
end
