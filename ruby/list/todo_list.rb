class TodoList
  def initialize(list)
    @list = list
  end

  def get_items
    @list
  end

  def add_item(str)
    @list << str
    @list
  end

  def delete_item(str)
    @list.delete(str)
    @list
  end

  def get_item(x)
    @list[x]
  end
end

# list = ["do the dishes", "mow the lawn"]

# TodoList.new(list)

