
actions :grant
 
default_action :grant

attribute :username,   :kind_of => String,   :name_attribute => true
attribute :domain,     :kind_of => String,   :default => '.'