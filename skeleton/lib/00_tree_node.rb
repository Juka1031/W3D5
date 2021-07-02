require "byebug"
class PolyTreeNode
    def initialize(value)
        @parent = nil #if parent is nil it means its root
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
    def parent=(new_parent)
        if @parent != nil
            @parent.children.delete(self)
        end
        @parent = new_parent

        if @parent != nil
            if !@parent.children.include?(self)
                @parent.children << self
            end
        end
        #it checks if parent == np
        #if it is just return
        #detach self from current parent
        #set self parrent to new parent
        #set self as a new child as new parent unless i already exist in that parents child array
    end

    def add_child(child_node)
        if !self.children.include?(child_node)
            child_node.parent = self
        end 
    end

    def remove_child(child_node)
        raise "error" if !self.children.include?(child_node)
        child_node.parent = nil
    end

    def dfs(target_value)
         if target_value == value
            return self 
        end
        self.children.each do |child|
            rec = child.dfs(target_value) 
            if rec != nil
                return wreck
            end
        end
        nil
    end
end