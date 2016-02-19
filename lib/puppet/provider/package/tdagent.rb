# This file must be compatible with Ruby 1.8.7 in order to work on EL6.
module Puppet::Parser::Functions
  Puppet::Type.type(:package).provide :tdagent, :parent => :gem, :source => :gem do
    has_feature :versionable, :install_options, :uninstall_options
    commands :gemcmd => '/opt/td-agent/usr/sbin/td-agent-gem'
  end
end
