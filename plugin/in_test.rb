class HogeInput < Fluent::Input
  Fluent::Plugin.register_input('in_test', self)

  def start
    #@thread = Thread.new(&method(:run))
    Fluent::Engine.emit("debug.debug", Fluent::Engine.now, {"event" => "start"})
  end

  def run
  	p 'run'
    loop do 
      #Fluent::Engine.emit("debug.deug", Fluent::Engine.now, {"hoge" => "fuga"})
    end
    p 'run end'
  end

  def shutdown
    Fluent::Engine.emit("debug.debug", Fluent::Engine.now, {"event" => "shutdown"})
  end

end