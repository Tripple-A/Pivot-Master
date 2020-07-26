module Pivot
  class Tracker
    def self.count(items)
      items.length
    end

    def self.item_for(items, assignee)
      selected_items = items.select { |item| item[:assignee] == assignee }
      selected_items.last
    end

    def self.pivoted?(items, assignee)
      items.any? { |item| item[:assignee] === assignee }
    end

    def self.selected_points(items, assignee)
      items.select { |item| item[:assignee] == assignee }
           .inject(0) { |sum, item| sum + item[:points] }
    end

    def self.total_points(items, assignee_hash = nil)
      last_pivots = {}
      items.each do |item|
        last_pivots[item[:assignee]] = item[:points]
      end
      sum = last_pivots.values.inject { |a, b| a + b }
      assignee_hash ? selected_points(items, assignee_hash[:assignee]) : sum
    end

    def self.unique_assignees(items)
      items.map { |item| item[:assignee] }.uniq
    end
  end
end
