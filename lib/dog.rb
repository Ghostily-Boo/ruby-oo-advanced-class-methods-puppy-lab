require 'pry'

class Dog

    attr_accessor :name, :save
    attr_reader :all, :print_all

    @@all = []
    @@print_all = []
    @save = []

    def initialize(pup)
        @@print_all << pup
        @name = pup
        self.save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
        @@print_all.clear
        @save.clear
    end

    def self.print_all
        puts @@print_all.join("\n")
    end

    def save
        @@all << self
    end

end