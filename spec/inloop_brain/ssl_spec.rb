# frozen_string_literal: true

require "inloop_brain/ssl"

RSpec.describe InloopBrain::SSL do
  describe ".allow_missing_crl_verify_callback" do
    it "accepts UNABLE_TO_GET_CRL errors" do
      cb = described_class.allow_missing_crl_verify_callback

      store_ctx = Object.new
      def store_ctx.error = OpenSSL::X509::V_ERR_UNABLE_TO_GET_CRL
      def store_ctx.error=(val)
        @_err = val
      end
      def store_ctx.error_string = "unable to get certificate CRL"

      expect(cb.call(false, store_ctx)).to be(true)
    end

    it "rejects non-CRL verification errors" do
      cb = described_class.allow_missing_crl_verify_callback

      store_ctx = Object.new
      def store_ctx.error = OpenSSL::X509::V_ERR_CERT_HAS_EXPIRED
      def store_ctx.error=(val)
        @_err = val
      end
      def store_ctx.error_string = "certificate has expired"

      expect(cb.call(false, store_ctx)).to be(false)
    end

    it "passes through successful verification" do
      cb = described_class.allow_missing_crl_verify_callback

      store_ctx = Object.new
      def store_ctx.error = OpenSSL::X509::V_OK
      def store_ctx.error=(val)
        @_err = val
      end
      def store_ctx.error_string = "ok"

      expect(cb.call(true, store_ctx)).to be(true)
    end
  end
end
