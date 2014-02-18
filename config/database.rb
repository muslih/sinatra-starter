require 'rubygems'
require 'dm-core'
require 'dm-validations'
require './models/User'

DataMapper.setup(:default, "sqlite3:///#{Dir.pwd}/dev.db")
