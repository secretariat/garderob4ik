# -*- encoding : utf-8 -*-
class Page < ActiveRecord::Base
	attr_accessible :name, :title, :uri,  :meta_d, :meta_k, :text
end
