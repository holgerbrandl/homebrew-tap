class Kscript < Formula
  desc "kscript"
  homepage "https://github.com/kscripting/kscript"
  url "https://github.com/kscripting/kscript/releases/download/v4.1.1/kscript-4.1.1-bin.zip"
  sha256 "127d169f5dc0f67800b99552c0db0e8b662de4dbe1ff8f2078a7c1cb9a5ed5c1"

  depends_on "kotlin"

  def install
    libexec.install Dir["*"]
    inreplace "#{libexec}/bin/kscript", /^JAR_PATH=.*/, "JAR_PATH=#{libexec}/bin/kscript.jar"
    bin.install_symlink "#{libexec}/bin/kscript"
  end
end
