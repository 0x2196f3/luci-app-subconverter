include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-subconverter
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-subconverter
	SECTION:=luci
	CATEGORY:=LuCI
	PKGARCH:=all
	SUBMENU:=3. Applications
	TITLE:=Subconverter
	DEPENDS:=+luci-base +luci
endef

define Package/luci-app-subconverter/description
	A merge of subweb and subconverter
endef

define Build/Compile
endef

define Package/luci-app-subconverter/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view
	$(INSTALL_DIR) $(1)/etc/init.d

	$(CP) -r $(TOPDIR)/package/luci-app-subconverter/* $(PKG_BUILD_DIR)/

	$(INSTALL_DATA) $(PKG_BUILD_DIR)/luasrc/controller/subconverter.lua $(1)/usr/lib/lua/luci/controller/
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/luasrc/view/subconverter.htm $(1)/usr/lib/lua/luci/view/
	
	$(CP) -r $(PKG_BUILD_DIR)/root/usr/subconverter $(1)/usr/
	
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/root/etc/init.d/subconverter $(1)/etc/init.d/
endef

$(eval $(call BuildPackage,luci-app-subconverter))
