class Graph

  def initialize(graph_arr)
    @graph_arr = graph_arr
    @routes_arr = []
    @sums_arr = []
  end

  def minimal_path()
    fill_routes_and_sums()
    @routes_arr[@sums_arr.index(@sums_arr.min)]
  end

  private
  def fill_routes_and_sums(arr_stack = [], i = 0, j = 0)
    if i == @graph_arr.count
      @routes_arr << arr_stack
      @sums_arr << arr_stack.sum
    else
      (j..[j + 1, @graph_arr[i].count - 1].min).each do |ind|
        fill_routes_and_sums(arr_stack + [@graph_arr[i][ind]], i + 1, ind)
      end
    end 
  end
end

graph_arr = [
  [2],
  [3,4],
  [6,5,7],
  [4,1,8,3]
]

p Graph.new(graph_arr).minimal_path