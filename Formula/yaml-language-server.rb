require "language/node"

class YamlLanguageServer < Formula
  desc "YAML language server"
  homepage "https://github.com/redhat-developer/yaml-language-server#readme"
  url "https://registry.npmjs.org/yaml-language-server/-/yaml-language-server-0.13.0.tgz"
  sha256 "6f3bda4b0816970e7317951013e251367e892cdd309d835f64b40fbf1d7615ff"
  license "MIT"

  depends_on "node"
  # uncomment if there is a native addon inside the dependency tree
  # depends_on "python" => :build

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    # add a meaningful test here
  end
end
