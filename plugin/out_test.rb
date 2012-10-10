class HogeOutput < Fluent::Output
  Fluent::Plugin.register_output('out_test', self)

  def emit(tag, es, chain)
    chain.next
    es.each do |time, record|      
      p time
      p record
    end
  end
end