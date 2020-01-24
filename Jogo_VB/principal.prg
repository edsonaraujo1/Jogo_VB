&& ---- Principal

SET BRSTATUS   OFF
SET STATUS BAR OFF
set status     OFF      
set SYSMENU    OFF
SET BELL       ON 
SET TALK       OFF 
SET DEFAULT TO \
 
ON SHUTDOWN QUIT

_screen.Icon        = 'SISTEMA.ICO'
_screen.Caption     = "Trix"
_screen.AutoCenter  = .T.
_screen.ControlBox  = .F. 
_screen.TitleBar    = 0 
_screen.Visible     = .T.
_Screen.WindowState = 2

DO FORM form_trix.scx
READ EVENTS 

 