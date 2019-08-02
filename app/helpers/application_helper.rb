module ApplicationHelper
    
    private
    
        def strong_params(*args)
            params.require(:"#{self.class.to_s.downcase.gsub("controller", "").singularize}").permit(*args)
        end
end
