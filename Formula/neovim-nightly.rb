class NeovimNightly < Formula
  desc "Ambitious Vim-fork focused on extensibility and agility"
  homepage "https://neovim.io/"
  license "Apache-2.0"
  url "https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage"
  version "nightly"

  bottle :unneeded
  cxxstdlib_check :skip
  conflicts_with "neovim", "neovim-binary"

  def install
    prefix.install Dir["*"]
    chmod(0755, "#{prefix}/nvim.appimage")
    bin.install_symlink("#{prefix}/nvim.appimage" => "nvim")
  end

  def caveats; <<~EOS
    Executable is linked as "nvim".
    EOS
  end
end
