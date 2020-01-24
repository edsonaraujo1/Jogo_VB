IF faz = 1
&& Movimento do Laiser 
Thisform.image5.Left = Thisform.image5.Left + 1
IF Thisform.image5.Left > (Thisform.Width - 20) .and. faz = 1
   Thisform.image5.Left = (Thisform.image2.Left + 40)
   SET BELL TO 'D:\Desenv\Jogo\Midi\SOUND53.wav'
   ?? CHR(7)
   Thisform.image5.Visible = .F. 
   faz = 2
ELSE
   && Caso o Tito acerte a nave Inimiga
   IF Thisform.image5.Left = Thisform.image6.Left
 	  IF (Thisform.image5.Top >= Thisform.image6.Top - 25) .AND. (Thisform.image5.Top <= Thisform.image6.Top + 25)
	     SET BELL TO 'D:\Desenv\Jogo\Midi\SOUND28.wav'
	     ?? CHR(7)
	     Thisform.image5.Visible = .F. 
	     IF Thisform.image5.Left = Thisform.image6.Left
            Thisform.image6.left = Thisform.Width
	        Thisform.image5.Left = Thisform.image2.Left + 40 
	        IF Thisform.image6.Top > Thisform.height - 50 
	           Thisform.image6.Top = Thisform.Top + 10  
	        ELSE    
	           Thisform.image6.Top = Thisform.image6.Top + 30
	        ENDIF    
	        Thisform.image6.Left = Thisform.Width  
	        es = es + 1
	        Thisform.label3.Caption = STR(es)
	        faz = 2
	     ENDIF    
	  ENDIF
   ENDIF    
ENDIF
ENDIF
