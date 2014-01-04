class OffsetsController < ApplicationController

  def index
    @offsets = Offset.all
  end

  def sho
    @offset = Offset.find(params[])
  end
  
  
end