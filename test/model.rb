class Model < ActiveRecord::Base
  validates_url_format_of :homepage
  validates_url_format_of :my_UrL_hooray
  validates_url_format_of :custom_url, :message => 'custom message'
end
