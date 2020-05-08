class R2r < Formula
  # cite Weinberg_2011 "https://doi.org/10.1186/1471-2105-12-3"
  desc "software to speed depiction of aesthetic consensus RNA secondary structures"
  homepage "https://sourceforge.net/projects/weinberg-r2r"
  url "https://sourceforge.net/projects/weinberg-r2r/files/R2R-1.0.6.tgz"
  version "1.0.6"
  sha256 "1ba8f51db92866ebe1aeb3c056f17489bceefe2f67c5c0bbdfbddc0eee17743d"

  depends_on "nlopt" => :recommended
  def install
    args = ["--enable-cfsap",
            "--disable-dependency-tracking",
            "--prefix=#{prefix}"]
    args << "--enable-nlopt" if build.with? "nlopt"
    system "./configure", *args
    system "make", "install" # if this fails, try separate make/make install steps
  end
end
