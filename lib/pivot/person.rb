#require './logger.rb'
module Pivot

  class Person < Logger
    def initialize(details)
      @email = details[:email]
      @first_name = details[:first_name]
      @last_name = details[:last_name]
      @items = []
    end

    def email
      @email
    end
    
    def first_name
      @first_name
    end

    def last_name
      @last_name
    end

    def items
      @items
    end

    def add_item(item, logger = nil)
      @items << item
      item.assignee = @email
      logger.info('item added') if logger
    end
  end
end