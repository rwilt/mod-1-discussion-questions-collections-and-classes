# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

class User
    @@all = []
attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def photos
      Photo.all.select do |p|
      p.user == self 
      end
      end     

end

class Photo 
    @@all = []
    attr_accessor :name, :comment, :user
  
    def initialize(name=nil, comment=nil, user=nil)
        @name = name
        @comment = comment
        @user = user
        @@all << self
    end
    
    def self.all
        @@all
    end

  def comments
    Comment.all.select do |c|
    c.name == self 
    end
  end 

def make_comment(comment)
Comment.new(comment)
end

end

class Comment
    @@all = []

attr_accessor :name
    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end  

end

sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
sandwich_photo.user.name
# => "Sophie"
sophie.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
#=> [#<Comment:0x00007fae28043700>]
