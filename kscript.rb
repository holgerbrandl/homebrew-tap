class Kscript < Formula
  desc "kscript"
  homepage "https://github.com/holgerbrandl/kscript"
  url "https://github.com/holgerbrandl/kscript/releases/download/v4.1.0/kscript-4.1.0-bin.zip"
  sha256 "6b1cce4ff482e1395b3353fb3bfb62960192545c80c982efd03a0f00ccb9f8e6"

  depends_on "kotlin"

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/kscript", /^JAR_PATH=.*/, "JAR_PATH=#{libexec}/bin/kscript.jar"
    bin.install_symlink "#{libexec}/bin/kscript"
  end
end
