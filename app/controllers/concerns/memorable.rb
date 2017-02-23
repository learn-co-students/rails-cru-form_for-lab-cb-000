module Memorable
  module InstanceVariables
    def ivar_by_id
      self.class.find(params[:id])
    end
  end
end