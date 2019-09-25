class DictionariesController < ApplicationController

 def list
  @dictionaries = Dictionary.all
 end

 def new
 
 end

 def show

 end
 
  def edit

 end
 
  def destroy
    redirect_back(fallback_location: root_path)
 end
 
end
