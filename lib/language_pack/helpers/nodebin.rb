require 'json'

class LanguagePack::Helpers::Nodebin
  NODE_VERSION = "20.9.0"
  YARN_VERSION = "1.22.19"

  def self.hardcoded_node_lts(arch: )
    arch = "x64" if arch == "amd64"
    version = ENV.fetch("NODE_VERSION", NODE_VERSION)
    {
      "number" => version,
      "url"    => "https://nodejs.org/download/release/v#{version}/node-v#{version}-linux-#{arch}.tar.gz",
    }
  end

  def self.hardcoded_yarn
    {
      "number" => YARN_VERSION,
      "url"    => "https://heroku-nodebin.s3.us-east-1.amazonaws.com/yarn/release/yarn-v#{YARN_VERSION}.tar.gz"
    }
  end

  def self.node_lts(arch: )
    hardcoded_node_lts(arch: arch)
  end

  def self.yarn
    hardcoded_yarn
  end
end
