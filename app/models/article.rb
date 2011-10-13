class Article < ActiveRecord::Base
  
  # Not sure how to deal with snippets yet
  # Figured namespacing with a _mercury suffix provides
  # an easy way to deal with the parameters sent.
  # This could be wrapped up with a mixin eventually
  # along the lines of
  #
  # include Mercury::Rails::Model
  #
  # mercury_attributes :body, :header  
  #
  def body_mercury=(data)
    self.body = data[:value]
  end
  
end
