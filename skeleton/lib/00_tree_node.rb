require "byebug"
class PolyTreeNode
    def initialize(value)
        @parent = nil
        @children = []
        @value = value
    end

    def parent
        @parent
    end

    def children
        @children
    end

    def value
        @value
    end

    def parent=(node) #node is the new parent
        @parent = node
        # debugger
        #we want to add children(grand children) to the new parent(node)
        @parent.children << self
    end
end