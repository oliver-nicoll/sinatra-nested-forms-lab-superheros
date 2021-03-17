class Team
    attr_accessor :name, :motto, :power, :bio

    @@team = []

    def initialize (args)
      @name = args[:name]
      @motto = args[:motto]
      @@team << self
    end

    def self.all
      @@team 
    end

    def self.clear
      @@team = []
    end

end