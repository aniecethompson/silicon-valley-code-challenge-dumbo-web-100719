class Startup
  attr_accessor :name
  attr_reader :founder, :domain
  @@all=[]
  
  def initialize(name, founder, domain)
  @name=name
  @founder= founder
  @domain= domain
  @@all << self
  end

  def pivot(domain, name)
  @name= name
  @domain =domain
  end

  def self.all
    @@all
    #FundingRound.all.map do |round|
      #round.startup
    #end
  end
  
  def self.find_by_founder(founder)
    self.all.find do |startup| 
    startup.founder ==founder
    end
  end
  
  def self.domain
    self.all.select do |startup|
      startup.domain
      binding.pry
    end
  end
end

    # binding.pry


# aniece= Startup.new("Aniece", "Flatiron", "robotics")
# tris= Startup.new("Tris", "Flatiron", "cars")