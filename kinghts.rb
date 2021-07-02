require '00_tree_node.rb'
class KnightPathFinder
    attr_reader :arr_pos
    def self.root_node
        root = PolyTreeNode.new(@arr_pos)
    end

    def initialize(arr_pos)
        @arr_pos = arr_pos
    end

    def self.valid_moves(pos)
        valid_pos = []
        if root.value == [0,0]
            
    end

end