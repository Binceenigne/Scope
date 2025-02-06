require('__shared/Base')
require('__shared/Advance')
require('__shared/Renderfov/Assaultfov')
require('__shared/Renderfov/Engineerfov')
require('__shared/Renderfov/Supportfov')
require('__shared/Renderfov/Reconfov')
require('__shared/Renderfov/Generalfov')
require('__shared/Renderfov/Commonfov')

--所有武器腰射持枪视角设置
Events:Subscribe('Partition:Loaded', function(partition)
	for _, instance in pairs(partition.instances) do
		if instance:Is("SoldierWeaponData") then
			local instance = SoldierWeaponData(instance)
			instance:MakeWritable()
			instance.renderFov = 60  -- 55 所有武器腰射持枪视角
            instance.zoomRenderFov = 36  -- 40 机瞄视野

			print('All Waepon RenderFov ')
		end
	end
end)


--[[
ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('EE9DF7D0-71D0-1127-0090-448309734FD0'), function(weaponRenderZoom)
    weaponRenderZoom = SoldierWeaponData(weaponRenderZoom)
    weaponRenderZoom:MakeWritable()
    weaponRenderZoom.renderFov =  c_Settings.xxxRenderFov
    weaponRenderZoom.zoomRenderFov =  c_Settings.xxxZoomRenderFov
    print('XXX RenderFov')
end)

   xxxRenderFov = 55, -- 55 腰射视野
   xxxZoomRenderFov = 20, -- 20 机瞄视野

ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('BF8EC908-5E77-42F6-8163-5276D20557CA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxReflex
    print('XXX Reflex')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('7B86E370-FCE4-4C51-A9FC-0D6A9CCC7A7A'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxKobra
    print('XXX Kobra')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('E1FED99C-2C23-45FB-A52F-334F47AD48EA'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxENVG
    print('XXX ENVG')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('E05170F4-4324-4330-B050-5C7C3596EAEC'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxEotech
    print('XXX EOTECH')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('59CA212F-4A0E-4AD2-BE7B-A2DBEA2C5987'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxPKAS
    print('XXX PKA-S')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('D6ABAA52-88FD-41F6-80B9-303FC2AA2C37'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxPKA
    print('XXX PKA')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('D6A1AD43-D587-4B82-AE43-D3A287771374'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxM145
    print('XXX M145')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('90199F85-96DB-4AC8-95E1-28D3A1513B78'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxPSO
    print('XXX PSO-1')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('EF1A609C-17E5-4B58-A174-76C3F0FE2B48'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxACOG
    print('XXX ACOG')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('4E0D7507-6B39-49DA-8228-C57FFEAF3672'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxRifle
    print('XXX Rifle')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('F9EDF856-1870-44E2-9EC6-F3757197EB57'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxPKS07
    print('XXX PKS-07')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('BA087D39-EBDB-4F8C-A29A-5745779F1343'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxBallistic
    print('XXX Ballistic')
end)




ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('C603C91C-D999-425C-9761-0E0A814E732B'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxHE
    print('XXX M320 HE')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('49D5F1FC-8360-4157-843C-086E0BE62256'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxSMK
    print('XXX M320 SMK')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('E1F8D0DD-C973-4CCF-8D42-32E6E237FC8C'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxSHG
    print('XXX M320 SHG')
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('1919810'), Guid('05D8381B-197E-43CA-92ED-683E76AAA5C2'), function(scopeRenderZoom)
    scopeRenderZoom = WeaponZoomModifier(scopeRenderZoom)
    scopeRenderZoom:MakeWritable()
    scopeRenderZoom.zoomRenderFov = c_Settings.xxxLVG
    print('XXX M320 LVG')
end)



   xxxRenderFov = 55, -- 55 持枪腰射视野
   xxxZoomRenderFov = 20, -- 20 机瞄视野
   xxxReflex = 17, -- 17  反射式瞄准镜
   xxxKobra = 18, -- 18 内红点瞄准镜
   xxxENVG = 18, -- 20  1X红外夜视镜
   xxxEotech = 20, -- 20  EOTECH光电全息瞄准镜
   xxxPKAS = 15, -- 15  PKA-S 全息瞄准镜
   xxxPKA = 15,  -- 15  PK-A（3.4倍）瞄准镜
   xxxM145 = 15, -- 15  M145（3.4倍）瞄准镜
   xxxPSO = 15, -- 15 PSO—1（4倍）瞄准镜
   xxxACOG = 15, -- 15 ACOG（4倍）瞄准镜
   xxxRifle = 15, -- 15 6倍瞄准镜
   xxxPKS07 = 15, -- 15 7倍瞄准镜
   xxxBallistic = 15, --15 12倍瞄准镜


   xxxHE = 35, -- 35 xxx下挂M320
   xxxSMK = 35, -- 35 xxx下挂M320烟雾
   xxxSHG = 35, -- 35 xxx下挂M320鹿弹
   xxxLVG = 35 -- 35 xxx下挂M320 LVG--]]

