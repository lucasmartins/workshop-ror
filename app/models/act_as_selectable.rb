module ActAsSelectable
  def options_for_select(name="nome",id="id",*options)
    options=options[0]
    filter=nil
    order=nil
    
    if options !=nil && options.class==Hash
      if options.include?(:filter) && options[:filter].class==Hash
        filter=options[:filter] # :filter=>{:nome=>'lol'} || :filter=>{:ativo=>true}
      end
      if options.include?(:order) && options[:order].class==Hash
        order=options[:order] # :filter=>{:nome=>'lol'} || :filter=>{:ativo=>true}
      end
    end
    
    if filter!=nil
      if order!=nil
        x = self.where(filter.to_a[0][0]=>filter.to_a[0][1]).order(order.to_a[0][0])
      else
        x = self.where(filter.to_a[0][0]=>filter.to_a[0][1]).order(name)
      end
    else
      if order!=nil
        x = self.find(:all,:order=>order.to_a[0][0])
      else
        x = self.find(:all,:order=>name)
      end
    end
    
    select_option_array = []
    x.each do |x|
      select_option_array.push(SelectOption.new(x.send(id),"#{x.send(name)}"))  
    end
    select_option_array
  end
end
