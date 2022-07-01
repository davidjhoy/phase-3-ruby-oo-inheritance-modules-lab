require 'pry'

class Song
  
  attr_accessor :name
  attr_reader :artist
  extend Memorable

  @@songs = []

  def initialize
    @@songs << self
  end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end
  extend Findable

  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end
  
  include Paramable
  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
