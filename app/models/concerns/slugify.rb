module Slugify

  module InstanceMethods
    def slug
      name.downcase.split.join("-")
    end
  end

  module ClassMethods
    def find_by_slug(slug)
      self.all.find{|object| object.slug == slug}
    end
  end

end
