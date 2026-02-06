# frozen_string_literal: true

require 'openssl'

module InloopBrain
  module SSL
    # Compatibility verify callback that soft-fails missing CRL errors.
    #
    # Some systems enable CRL checking globally for TLS verification but do not
    # ship or fetch CRLs, causing OpenSSL to fail with:
    #   "certificate verify failed (unable to get certificate CRL)"
    #
    # This callback preserves strict verification for all other errors.
    def self.allow_missing_crl_verify_callback(debug: false, io: $stderr)
      proc do |preverify_ok, store_ctx|
        if preverify_ok
          true
        else
          err = store_ctx.error
          if err == OpenSSL::X509::V_ERR_UNABLE_TO_GET_CRL ||
             err == OpenSSL::X509::V_ERR_UNABLE_TO_GET_CRL_ISSUER
            if debug
              io.puts "Warning: SSL certificate CRL unavailable (#{store_ctx.error_string}); continuing without CRL check"
            end
            store_ctx.error = OpenSSL::X509::V_OK if store_ctx.respond_to?(:error=)
            true
          else
            false
          end
        end
      end
    end
  end
end
