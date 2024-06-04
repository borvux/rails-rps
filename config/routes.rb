Rails.application.routes.draw do
  get("/", { :controller => "rps", :action => "homepage"})
  get("/home", { :controller => "rps", :action => "homepage"})
  get("/rock", { :controller => "rps", :action => "rock"})
  get("/paper", { :controller => "rps", :action => "paper"})
  get("/scissors", { :controller => "rps", :action => "scissors"})
end
