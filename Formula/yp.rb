class Yp < Formula
  desc "Rust cli ppp to that prints a progress bar day/year"
  homepage "https://git.sr.ht/~travisshears/year-progress"
  url "https://travisshears.com/apps/year-progress/year-progress-0.1.0.tar.gz"
  sha256 "5d59e7a3b147d4e5956628e4878778188565263518bc935f207001622a6e9b5f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    result = shell_output("#{bin}/year-progress --version")
    assert_match "Year Progress", result
  end
end
