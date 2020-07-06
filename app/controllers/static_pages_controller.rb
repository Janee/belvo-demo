# frozen_string_literal: false

class StaticPagesController < ApplicationController

  # Dashboard
  def index
    @balances = BelvoManager::Balances.new
    @owners_with_accounts = relate_accounts_with_owners
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

  def relate_accounts_with_owners
    accounts = []
    BelvoManager::Accounts.new.listed.each do |account|
      aux = BelvoManager::Owners.new.create(account['link'])
      accounts << aux
    end
    accounts[0]
  end
end
