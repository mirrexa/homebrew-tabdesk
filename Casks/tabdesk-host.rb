cask "tabdesk-host" do
  version "0.1.124"
  sha256 "37372fec7f2cb1d0f12b05a547a6e96fe47afc1989de3979de8694c8fc8d9de1"

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
