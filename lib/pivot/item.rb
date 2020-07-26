module Pivot
  class Item
    attr_accessor :assignee
    def initialize(details)
      @name = details[:name]
      @assignee = details[:assignee]
      @points = details[:points]
      @project_code = @name.split('-')[0]
    end

    attr_reader :name

    attr_reader :assignee

    attr_reader :points

    def +(another_item)
      @points + another_item.points
    end

    attr_reader :project_code

    def valid?
      valid_codes = %w[AZR EREC]
      return true if valid_codes.include?(@project_code)

      false
    end
  end
end
