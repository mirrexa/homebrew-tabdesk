cask "tabdesk-host" do
  version "0.1.126"
  sha256 "db9397dd6abc78cb11e7445b0769a31745dd779e3218979b6e5c733b9e167a71"

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
