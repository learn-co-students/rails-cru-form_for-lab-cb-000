class Artist < ActiveRecord::Base
  def to_s
    self.name + " " + self.bio
  end
end
