class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

    def bfs(target_value)
        queue = [self]
        visited = []
        while !queue.empty?
            curr_node = queue.shift
            if curr_node.value == target_value 
                return curr_node 
            end
            curr_node.neighbors.each do |neighbor|
                queue << neighbor
            end
        end
        nil
    end
end