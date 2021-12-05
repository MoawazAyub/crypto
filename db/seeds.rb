# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CryptoCurrency.find_or_create_by(name: 'bitcoin', abbreviation: 'BTC', multisig: 2)
CryptoCurrency.find_or_create_by(name: 'ethereum', abbreviation: 'ETH', multisig: 20)
CryptoCurrency.find_or_create_by(name: 'binance-coin', abbreviation: 'BNB', multisig: 20)
CryptoCurrency.find_or_create_by(name: 'bitcoin-sv', abbreviation: 'BSV')

Resource.satoshi.find_or_create_by(resource_type: Resource.resource_types['satoshi'])
Resource.satoshi_sv.find_or_create_by(resource_type: Resource.resource_types['satoshi_sv'])
Resource.gas_eth.find_or_create_by(resource_type: Resource.resource_types['gas_eth'])
Resource.gas_bsc.find_or_create_by(resource_type: Resource.resource_types['gas_bsc'])
