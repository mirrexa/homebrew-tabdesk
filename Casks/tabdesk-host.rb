cask "tabdesk-host" do
  version "0.1.128"
  sha256 "8a0d108d38760208b3b48ee0dc25735accb06eaf0fc841ee537463438cdeaf07"

  url "https://tabdesk.worksentials.com/downloads/TabDeskHost-#{version}.pkg"
  name "TabDesk Host"
  desc "Browser remote desktop host agent"
  homepage "https://tabdesk.worksentials.com/"

  pkg "TabDeskHost-#{version}.pkg"

  uninstall pkgutil: "com.tabdesk.host"

  caveats <<~EOS
    TabDesk Host may request Screen Recording and Accessibility permission.
    The host runs as a menu-bar app and connects outbound to the TabDesk
    signaling service. See https://tabdesk.worksentials.com/docs.
  EOS
end
