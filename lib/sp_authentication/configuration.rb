module SpAuthentication
  module Configuration
    mattr_accessor :secret_key, :consumer_key, :access_token_header_name, :consumer_key_header_name, :signature_header_name, :print_debug, :stdout

    def configure
      set_default
      yield self
      self
    end

    def set_default
      self.access_token_header_name ||= "HTTP_ACCESSTOKEN"
      self.consumer_key_header_name ||= "HTTP_CONSUMERKEY"
      self.signature_header_name    ||= "HTTP_SIGNATURE"
    end

  end
end
