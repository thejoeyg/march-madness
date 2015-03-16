class Bracket < ActiveRecord::Base
  belongs_to :user
  belongs_to :organization

  NODES = (127.times.map &:to_s)
     #make sure all nodes are here
     #admin account has an id of 10

  def score(actual_bracket)      #make an actual bracket here with admin"s final results to compare if values of nodes match
    total_score = []
      NODES.each do |node|
        my_node_value = self.send node       #getting node value of prediction bracket
        actual_node_value = actual_bracket.send node   #getting node value of actual bracket
        total_score << points(my_node_value, actual_node_value, node)
      end
    return total_score.sum
  end

  def self.get_admin_bracket
    Bracket.find(2) rescue Bracket.new
  end

  private
  def points(my_node_value, actual_node_value, node)
    n = node.to_i

    if my_node_value == actual_node_value
      if n >= 64 && n <= 95
        1
      elsif n >= 96 && n <= 111
        2
      elsif n >= 112 && n <= 119
        4
      elsif n >= 120 && n <= 123
        8
      elsif n >= 124 && n <= 125
        16
      elsif n == 126
        32
      else
        0
      end
    end
  end

end
