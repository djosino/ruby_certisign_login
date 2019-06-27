
module CertisignFormHelper

  module ActionView

    def certisign_form(id, name, url, method = :get)
      menu = content_tag(:form, url: "https://autenticador.certisign.com.br/CertisignLogin/certificado/login", method: method) do 
        concat hidden_field_tag :id,      id
        concat hidden_field_tag :nome,    name
        concat hidden_field_tag :retorno, url
        concat tag :br
        concat content_tag(:button, 
          content_tag(:img, src: "/assets/ico-certisign_30x30.png", style: 'float: left') { concat "Login com Certificado Digital" },
          type: :submit, class: "btn btn-default btn-block", style: "line-height: 30px; font-size: 16px;" )
      end
    end

  end

end

ActionView::Base.send :include, CertisignFormHelper::ActionView
