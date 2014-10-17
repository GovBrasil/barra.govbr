  divBarra = document.getElementById("barra-brasil")
  if divBarra
    divBarra.removeAttribute "style"
  # conteudoBarra definido no barra-brasil-1.yaml e atribuido pelo assetgen
    divBarra.innerHTML = conteudoBarra

  window._barrabrasil =
    insere_css: (css) ->
        style = document.createElement("style")
        tipo = document.createAttribute("type")
        tipo.nodeValue = "text/css"
        media = document.createAttribute("media")
        media.nodeValue = "all"
        style.setAttributeNode tipo
        style.setAttributeNode media
        
        if style.styleSheet #Hack para IE8
            style.styleSheet.cssText = css
        else
            style.appendChild document.createTextNode(css)

        head = document.getElementsByTagName("head")[0]        
        head.appendChild style

