class KnightPathFinder
    OPS = [[1,2], [1,-2], [-1,2], [-1,-2], [2,1], [2,-1], [-2,1], [-2,-1]]

    def self.valid_moves(pos)
        moves = OPS.map { |op| pos[0] + op[0], pos[1] + op[1] }
        moves.select { |move| move.all? { |i| i >= 0 && i < 8 } }
    end

    def initialize(root_node)
        @root_node = root_node
        @considered_positions = [root_node]
    end

    def new_move_positions(pos)
        KnightPathFinder.valid_moves.reject do |move|
            @considered_positions.include?(move)
        end
    end
end
