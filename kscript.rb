class Kscript < Formula
  desc "kscript"
  homepage "https://github.com/holgerbrandl/kscript"
  url "https://github.com/holgerbrandl/kscript/releases/download/v4.1.0/kscript-4.1.0-bin.zip"
  sha256 "02c3a1c414d9fab6fd05cb41e3f5d50e0e590226edf6b44d80f779e71d8e5942"

  depends_on "kotlin"

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/kscript", /^JAR_PATH=.*/, "JAR_PATH=#{libexec}/bin/kscript.jar"
    bin.install_symlink "#{libexec}/bin/kscript"
  end
end
