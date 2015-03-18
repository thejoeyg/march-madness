class Organization < ActiveRecord::Base
  has_many :users
  has_many :brackets

    def average_team_score
      actual_bracket = Bracket.get_admin_bracket
      total = 0

      has_admin = false

      self.brackets.each do |bracket|
        if bracket.id == actual_bracket.id
          has_admin = true
          next
        end
        total += bracket.score(actual_bracket)
      end

      if has_admin
        return 0 if self.brackets.length - 1 == 0
        total /= (self.brackets.length - 1)
      else
        return 0 if self.brackets.length == 0
        total /= self.brackets.length
      end
      return total
    end

end
