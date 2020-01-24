USE pla_cai    IN 1 SHARED 
USE caixa      IN 2 SHARED 
USE codigo     IN 3 SHARED 

SET STEP ON 
NUME = 1

faz = 1

SELECT 2

DO WHILE .T.
   ? DATA
   IF SUBSTR(data,4,7) = "03/2005"
      STORE 
   
   
   
   ELSE
      SKIP
      LOOP
   ENDIF       
   
ENDDO
  
   
   DO CASE 
   
      CASE faz = 1
      && Text113
      DO WHILE .not. EOF()
	      FOR ri = 0 TO 1
		      STORE "01/"+ALLTRIM(MES)+"/"+ANO TO ca_data   
	          SELECT 3
		      IF .NOT. EOF()
		         STORE Codigo   TO codigo_ca
		         STORE Histo_02 TO descri_ca
		         SKIP 
		      ENDIF
		      SELECT 2
		      STORE codigo_ca              TO ca_top
		      STORE "NILVA          "      TO ca_opera
		      STORE "C"                    TO ca_ti
		      DO while data = "03/2005"
		      
		      
		         STORE "Text"+&Te_1 TO ca_valor113   
		         valor_text1 = valor_text1 + ca_valor113
		         SKIP
		      ENDDO
		      Te_ 1 = Te_1 + 1
		  NEXT 
	  ENDDO
	   	  
   ENDCASE 

      SELECT 3
	  SET ORDER TO CODIGO   && ALLTRIM(CODIGO) 
	  SEEK ca_top
	  IF .NOT. EOF()
	     STORE Histo_02 TO descri_ca
	  ELSE
	     STORE "  "     TO descri_ca
	  ENDIF

	  SELECT 1
	  GO BOTTOM
	  STORE CODIGO + 1 TO aa_n_cod
	  ? aa_n_cod
*	  APPEND BLANK 
*	  replace codigo    WITH aa_n_cod
*	  replace cod_mov   WITH ca_top
*	  replace Subsede   WITH "A"
*	  replace Movi      WITH "C"
*	  replace valor     WITH ca_valor
*	  replace data      WITH ca_data
*	  replace dat_pes   WITH CTOD(ca_data)
*	  replace descricao WITH descri_ca 
*     replace data_mov  WITH DTOC(DATE())
*     replace cod_mov_ve WITH "**NOVO*NOVO**"
      faz = faz + 1
      SELECT 2
	ELSE
	  IF EOF()
	     EXIT do 
	  ENDIF    
	  SKIP
	  LOOP
	ENDIF   
	SELECT 2
ENDDO
