class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  
  scope :filter_by, lambda { |filtering_params|
    obj = self
    filtering_params.each do |key, value|
      obj = obj.send("filter_by_#{key}", value) if value.present? || value == false
    end

    obj
  }  
end
