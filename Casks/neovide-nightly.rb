cask "neovide-nightly" do
  version :latest
  sha256 :no_check

  arch arm: "aarch64"
  url "https://github.com/neovide/neovide/releases/download/nightly/neovide-macos-aarch64.tar.gz",
      verified: "github.com/neovide"

  name "Neovide"
  desc "No Nonsense Neovim Client in Rust"
  homepage "https://neovide.dev"

  binary "neovide-macos-#{arch}/bin/nvim"

  postflight do
    system_command "xattr", args: ["-cr", "#{staged_path}"]
  end
end
