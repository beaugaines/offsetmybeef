class OffsetsController < ApplicationController

  def index
    @offsets = Offset.all
  end
  
end