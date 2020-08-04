module Pivot
  class Item
    attr_accessor :assignee
    attr_reader :name, :points, :project_code

    def initialize(details)
      @name = details[:name]
      @assignee = details[:assignee]
      @points = details[:points]
      @project_code = @name.split('-')[0]
    end

    def +(another_item)
      @points + another_item.points
    end

    def valid?
      valid_codes = %w[AZR EREC]
      return true if valid_codes.include?(@project_code)

      false
    end
  end
end
