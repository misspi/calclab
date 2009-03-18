module SimpleHelper


  def navigation_link(name)
    destino = { :controller => 'simple', :action => name }

    if current_page?(destino)
      link_to name, destino, {:id => name, :class => 'active'}
    else
      link_to name, destino, {:id => name}
    end
    
  end
  
end
