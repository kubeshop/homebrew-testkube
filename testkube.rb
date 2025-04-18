# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "2.1.143"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.143/testkube_2.1.143_Darwin_x86_64.tar.gz"
      sha256 "b6d028325fd3345ae55a64ebc8bef0eaefcd1c79033d42c1c0338205ed6f3ae0"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v2.1.143/testkube_2.1.143_Darwin_arm64.tar.gz"
      sha256 "baad6e877285ecf60b2d4d9faf65fea442927c934d846928b9f5f0911509a7ab"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.143/testkube_2.1.143_Linux_x86_64.tar.gz"
        sha256 "54c6c5d346e2d9c72a2a98f696fe5676571dab88f5ca52be1863fa1208f455e2"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v2.1.143/testkube_2.1.143_Linux_arm64.tar.gz"
        sha256 "8794278284c63acf40480753b7b642d08949d603ae286e375c3a284015a30bdf"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end
