class Bracket < ActiveRecord::Base
  belongs_to :user
  belongs_to :organization


  NODES = %w(M1A M1B M1C M1D M1E M1F M1G M1H M2A M2B M2C M2D M3A M3B M4A
    S1A S1B S1C S1D S1E S1F S1G S1H S2A S2B S2C S2D S3A S3B S4A W1A W1B
    W1C W1D W1E W1F W1G W1H W2A W2B W2C W2D W3A W3B W4A E1A E1B E1C
    E1D E1E E1F E1G E1H E2A E2B E2C E2D E3A E3B E4A M5S W5E W6W)
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

  private
  def points(my_node_value, actual_node_value, node)
    n = node[1].to_i
    if my_node_value == actual_node_value
      2**(n-1)
    else
      0
    end
  end

end
