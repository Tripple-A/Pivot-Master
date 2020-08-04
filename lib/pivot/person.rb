require 'logger'
module Pivot
  class Person
    attr_reader :email, :first_name, :last_name, :items

    def initialize(details)
      @email = details[:email]
      @first_name = details[:first_name]
      @last_name = details[:last_name]
      @items = []
    end

    def add_item(item)
      @items << item
      item.assignee = @email
      Logger.last.info('item added')
    end
  end
end
