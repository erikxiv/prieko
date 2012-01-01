module PatternsHelper
  
  module_function
  def get_suggested_patterns(user)
    # Get suggested patterns, e.g. descriptions that all have the same category and is not yet matched by a pattern
    
    # Get all existing description/category pairs
    @c = user.verifications.find(:all, :select =>  'description, category',:group => 'description, category', :order => 'description')
    # Remove all descriptions that has more than one category
    @suggested = @c.reject{|v| @c.count{|x| x.description == v.description} > 1}
    # Remove all descriptions that match a pattern
    @suggested = @suggested.reject{|s| user.patterns.where(:pattern => s.description).count > 0}
  end
end
