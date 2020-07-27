module Pivot
  class Person
    def initialize(details)
      @email = details[:email]
      @first_name = details[:first_name]
      @last_name = details[:last_name]
      @items = []
    end

    attr_reader :email

    attr_reader :first_name

    attr_reader :last_name

    attr_reader :items

    def add_item(item, logger = nil)
      @items << item
      item.assignee = @email
      logger&.info('item added')
    end
  end
end
