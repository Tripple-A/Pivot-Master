module Pivot
  class Item
    attr_accessor :assignee
    def initialize(details)
      @name = details[:name]
      @assignee = details[:assignee]
      @points = details[:points]
      @project_code = @name.split('-')[0]
    end

    def name
      @name
    end

    def assignee
      @assignee 
    end

    def points 
      @points
    end

    def +(another_item)
      @points + another_item.points
    end

    def project_code
      @project_code
    end

    def valid?
      valid_codes = ['AZR', 'EREC']
      return true if valid_codes.include?(@project_code) 
      false
    end
  end
end