
module CertisignFormHelper

  module ActionView
    
    CERTISIGN_LOGO = "data:image/png;base64,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"

    def certisign_form(id, name, url, method = :get)
      menu = content_tag(:form, action: "https://autenticador.certisign.com.br/CertisignLogin/certificado/login", method: method) do 
        concat hidden_field_tag :id,      id
        concat hidden_field_tag :nome,    name
        concat hidden_field_tag :retorno, url
        concat tag :br
        concat content_tag(:button, 
          content_tag(:img, src: CERTISIGN_LOGO, style: 'float: left; width: 30px') { concat "Login com Certificado Digital" },
          type: :submit, class: "btn btn-default btn-block", style: "line-height: 30px; font-size: 16px;" )
      end
    end

  end

end

ActionView::Base.send :include, CertisignFormHelper::ActionView

