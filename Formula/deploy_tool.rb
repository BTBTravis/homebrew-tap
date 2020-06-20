class DeployTool < Formula
  include Language::Python::Virtualenv
  desc "travisshears.com deploy tool"
  homepage "https://travisshears.com"
  url "https://gitlab.com/BTBTravis/travisshears.com-deploy-tool/-/archive/0.1.1/travisshears.com-deploy-tool-0.1.1.tar.gz"
  sha256 "64a1b2205b0f5cfca22d6d6adb904641375e8b1b66d5e37a930ade6f5614ccfc"

  depends_on "python@3.8"

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/25/15/0bc752dcd49cbc6b0c2ca38ce6223317b73726f8bba5be2482ae3cf8e4a8/boto3-1.14.7.tar.gz"
    sha256 "4856c8cb4150b900cc7dccbdf16f542fb8c12e97b17639979e58760847f7cf35"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/d7/0f/f6786cd9a5e185d870bf168368e85a2ecfe943488ab06c330b1ee1f71a63/botocore-1.17.7.tar.gz"
    sha256 "cce790e65368d28dfd715558daea6890922716efa69d3a4c76d80348a71ad460"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/93/22/953e071b589b0b1fee420ab06a0d15e5aa0c7470eb9966d60393ce58ad61/docutils-0.15.2.tar.gz"
    sha256 "a2aeea129088da402665e92e0b25b04b073c04b2dce4ab65caaa38b7ce2e1a99"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/3c/56/3f325b1eef9791759784aa5046a8f6a1aff8f7c898a2e34506771d3b99d8/jmespath-0.10.0.tar.gz"
    sha256 "b85d0567b8666149a93172712e68920734333c0ce7e89b78b3e987f71e5ed4f9"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/be/ed/5bbc91f03fa4c839c4c7360375da77f9659af5f7086b7a7bdda65771c8e0/python-dateutil-2.8.1.tar.gz"
    sha256 "73ebfe9dbf22e832286dafa60473e4cd239f8592f699aa5adaf10050e6e1823c"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/50/de/2b688c062107942486c81a739383b1432a72717d9a85a6a1a692f003c70c/s3transfer-0.3.3.tar.gz"
    sha256 "921a37e2aefc64145e7b73d50c71bb4f26f46e4c9f414dc648c6245ff92cf7db"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/6b/34/415834bfdafca3c5f451532e8a8d9ba89a21c9743a0c59fbd0205c7f9426/six-1.15.0.tar.gz"
    sha256 "30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/05/8c/40cd6949373e23081b3ea20d5594ae523e681b6f472e600fbc95ed046a36/urllib3-1.25.9.tar.gz"
    sha256 "3018294ebefce6572a474f0604c2021e33b3fd8006ecd11d62107a5d2a963527"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/27/6f/be940c8b1f1d69daceeb0032fee6c34d7bd70e3e649ccac0951500b4720e/click-7.1.2.tar.gz"
    sha256 "d2b5255c7c6349bc1bd1e59e08cd12acbbd63ce649f2588755783aa94dfb6b1a"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deploy_tool --version")
  end
end
