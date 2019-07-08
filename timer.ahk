#NoTrayIcon
#SingleInstance force
#IfWinActive Dota 2
#Persistent

roshanTime = 0
IsPaused = 0 
toChat(msg){
	If WinActive("Dota 2")
	{
		Send, {Enter}
		sleep, 50
		Send, %msg% 
		sleep, 50
		Send, {Enter}
	}
}

toChatAll(msg){
	If WinActive("Dota 2")
	{
		Send, +{Enter}
		sleep, 50
		Send, %msg% 
		sleep, 50
		Send, {Enter}
	}
}
FormatTime, TimeString, T12, Time


toChatAll("����� � ������� ����")
toChat("������� ������: + - 0:50")
sleep, 30000
toChat("���� ��������� �������� ����� 20 ������!")
sleep 50
toChat("���� �� ����� �������� ����� 2 ������ � 20 ������!")
SetTimer, bountyRunes, 300000, on
SetTimer, riverRunes, 120000, on
return 

NumpadSub::
	SetTimer, roshanTimer, 60000, on
	MouseGetPos, xpos, ypos 
	toChat("����� ��� ��������!")
	Send, {Alt down}
	MouseClick, left, 677, 12
	Send, {Alt up}
	MouseMove, xpos, ypos 
return

roshanTimer:
	roshanTime := roshanTime + 1
	if roshanTime = 4
	{
		toChat("���� ����� ��� �� �����������, �� �� ������� ����� ������!")
	} else if (roshanTime = 6) {
		toChat("����� ���������� �����: ")
		sleep, 50
		toChat("2-5 ������, ����������, ��������� ����� � ������ ������!" )
	} else if (roshanTime = 5)  
		toChat("������ ������ ���!: ")
	
return

riverRunes:
	toChat("���� �� ����� �������� ����� 20 ������!")
return

bountyRunes:
	sleep 50
	toChat("���� ��������� �������� ����� 20 ������!")
return