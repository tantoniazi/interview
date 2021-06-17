require "net/http"
require "builder"
require "uri"

module Correios
    class ConsultaCep
        def get(cep)
            
            begin
                uri = URI.parse("http://viacep.com.br/ws/#{cep}/json")
                request = Net::HTTP::Get.new(uri)
                req_options = {
                    use_ssl: uri.scheme == "https",
                    accept: 'application/json'
                }
                response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
                http.request(request)
                end
                json = JSON.parse(response.body)
                Cep.create(json)
                response.body
            rescue
                nil
            end    
        end
    end
end