class NeovimNightly < Formula
  desc "Ambitious Vim-fork focused on extensibility and agility"
  homepage "https://neovim.io/"
  license "Apache-2.0"
  if OS.mac?
    head "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz"
  else
    head "https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz"
  end

  conflicts_with "neovim"
  cxxstdlib_check :skip

  def install
    libexec.install Dir["*"]
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    'Executable is linked as "nvim".'
  end
end
