# frozen_string_literal: false

class StaticPagesController < ApplicationController

  # Dashboard
  def index
    @balances = BelvoManager::Balances.new
    
    @currencies = format(@balances.overview)
  end

  def format(value)
    currencies = value.group_by { |k| k[:currency] }
    currencies.each do |cu|
      aux = []
      cu[1].each do |ba|
        aux << ba.except(:currency).values
      end
      cu[1] << { values: aux }
    end
    currencies
  end
end
