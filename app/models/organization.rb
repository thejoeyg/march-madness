class Organization < ActiveRecord::Base
  has_many :users
  has_many :brackets

  NODES = (127.times.map &:to_s)

    def average_team_score
      actual_bracket = Bracket.get_admin_bracket
      total = 0
      self.brackets.each do |bracket|
        total += bracket.score(actual_bracket)
      end
      total /= self.brackets.length
      return total
    end

end
