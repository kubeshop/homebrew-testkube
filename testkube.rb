# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Testkube < Formula
  desc "Testkube - your somewhat opinionated and friendly Kubernetes testing framework!"
  homepage "https://testkube.io"
  version "2.0.20"
  license "MIT"

  depends_on "helm"
  depends_on "kubectl"

  on_macos do
    on_intel do
      url "https://github.com/kubeshop/testkube/releases/download/v2.0.20/testkube_2.0.20_Darwin_x86_64.tar.gz"
      sha256 "a5d2532a9b38715471b16e7a780b8035bc83db45c5fb56b1d2a6a52eaad3c5f5"

      def install
        bin.install "kubectl-testkube"
        ln_s bin/"kubectl-testkube", bin/"tk"
        ln_s bin/"kubectl-testkube", bin/"testkube"
      end
    end
    on_arm do
      url "https://github.com/kubeshop/testkube/releases/download/v2.0.20/testkube_2.0.20_Darwin_arm64.tar.gz"
      sha256 "553411ae7a65c51370c5387a77c4e069ce51de090e970ac72cc5dd9f3d2ef394"

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
        url "https://github.com/kubeshop/testkube/releases/download/v2.0.20/testkube_2.0.20_Linux_x86_64.tar.gz"
        sha256 "c6c4acb893ac06d34143a92211b561e67c44ad6e29d420ea20b33cc9d7edc6b6"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kubeshop/testkube/releases/download/v2.0.20/testkube_2.0.20_Linux_arm64.tar.gz"
        sha256 "67920d5bd4af909bd07a02820e2013d931a66c784f79b99b1466612f91f79720"

        def install
          bin.install "kubectl-testkube"
          ln_s bin/"kubectl-testkube", bin/"tk"
          ln_s bin/"kubectl-testkube", bin/"testkube"
        end
      end
    end
  end
end
