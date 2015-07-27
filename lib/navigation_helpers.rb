module NavigationHelpers
  def breadcrumbs_list(resource, list=[])
    if resource
      list.prepend( url: resource.url, name: resource.data.breadcrumb_title || resource.data.title )
      breadcrumbs_list(resource.parent, list)
    else
      list[0...-1]
    end
  end
end