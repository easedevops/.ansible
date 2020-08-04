# 多用户
# 重命名主机
Function Rename-Computer($NewName){$Oldname=Get-WMIObject  Win32_ComputerSystem;$Oldname.Rename($NewName)|out-null}; Rename-Computer xxx
# 关闭防火墙
netsh.exe advfirewall set allprofiles state off
# 关闭自动升级和开机启动服务
net.exe stop wuauserv; sc.exe config wuauserv start= disabled; sc.exe failure wuauserv reset= 86400 action= null
## gpedit  regedit  mstsc
# 配置组策略
#secedit 导入策略    导出inf 生成db  导入db
# 修改注册表
#Set-ItemProperty -Path "HKLM:\SYSTEM"
# 设置系统时间等
