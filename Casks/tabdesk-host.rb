cask "tabdesk-host" do
  version "0.1.127"
  sha256 "9bdd187c1c14783aca774d0396b8cc79bd346affeecfc2445b4e10816e41c94d"

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
