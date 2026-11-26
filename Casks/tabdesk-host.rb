cask "tabdesk-host" do
  version "0.1.134"
  sha256 "34426d26e4f97b259f993ed6a02f8cdc86c39f100dc07f013b99f447c1cc269b"

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
