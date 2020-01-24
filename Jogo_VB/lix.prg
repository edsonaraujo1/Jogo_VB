CLEAR
SET STEP ON 
ri = 0
Te_1 = 113
fim2 = 0
GO TOP 
DO while .t.
   ? data
   IF data = "03/2005"
      FOR ri=1 TO 5
          STORE "Text"+ALLTRIM(STR(Te_1)) TO Te_3
          STORE &te_3 TO fim
          fim2 = fim2 + fim
          ? fim2
          skip
      NEXT
      fim2 = 0
      STORE Te_1 + 1 TO Te_1
      GO top
      loop     
   ELSE
      SKIP
      loop   
   ENDIF
   IF EOF()
      GO top
      *EXIT do
   ENDIF    
   SKIP
ENDDO