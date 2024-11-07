module("luci.controller.subconverter", package.seeall)

function index()
  subconverter = entry({"admin", "services", "subconverter"}, template("subconverter"), _("Subconverter"), 10)
  subconverter.dependent = true
end
