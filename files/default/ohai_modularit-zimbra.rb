# Plugin to export modularit-zimbra


Ohai.plugin(:ModularitZimbra) do
  provides "modularit_zimbra"

  collect_data do
    modularit_zimbra Mash.new

    modularit_zimbra["zimbra-version"] = %x[ rpm -q --queryformat "%{VERSION}" zimbra-core ]
  end
end

