Rails.application.routes.draw do
  get("/", { :controller => "view", :action => "homepage"})
  get("/home", { :controller => "view", :action => "homepage"})
  get("/rock", { :controller => "view", :action => "rock"})
  get("/paper", { :controller => "view", :action => "paper"})
  get("/scissor", { :controller => "view", :action => "scissors"})
end
