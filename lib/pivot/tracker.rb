module Pivot
  class Tracker
    
    def self.count(items)
      items.length
    end

    def self.item_for(items, assignee)
      selected_items = items.select{|item| item[:assignee] == assignee}
      selected_items.last
    end

    def self.pivoted?(items, assignee)
      items.any? { |item| item[:assignee] === assignee }
    end

    def self.add_points(items)
      items.inject(0) { |sum, item| sum + item[:points] }
    end

    def self.selected_points(items, assignee)
      selected = items.select{|item| item[:assignee] == assignee}
      add_points(selected)
    end

    def self.total_points(items, assignee_hash = nil)
      assignee_hash ? selected_points(items, assignee_hash[:assignee]) : add_points(items)
    end

  end
end