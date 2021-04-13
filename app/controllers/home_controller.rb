class HomeController < ApplicationController
  def index
    dataset_path = Settings.development.dataset_path
    @tulip = Dir.entries("#{dataset_path}/tulip").sample(1)[0]
    @rose = Dir.entries("#{dataset_path}/rose").sample(1)[0]
    @sunflower = Dir.entries("#{dataset_path}/sunflower").sample(1)[0]
    @daisy = Dir.entries("#{dataset_path}/daisy").sample(1)[0]
  end

  def about
  end
end
