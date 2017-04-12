class TodoList
attr_accessor :array


  def initialize(items)
    @array = items
  end

  def get_items
    @array
  end

  def add_item(new_item)
    @array << new_item
  end

  def delete_item(item_to_delete)
    @array.delete(item_to_delete)
  end

  def get_item(index_number)
    @array[index_number]
  end

end