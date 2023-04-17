MODULE Module1
    !Declaraci�n de socket
     VAR socketdev serverSocket; !Socket del servidor
VAR socketdev clientSocket; !Socket del cliente
VAR string data; ! Recibe la cadena del cliente

    ! Declaraci�n de variables
    VAR num Bucle; !Declaraci�n d bucle para el while

    
   
VAR string sing;
VAR string selfi;
VAR string finish;
VAR string program;
VAR string tablas;


    CONST robtarget INI_TOOL:=[[506.291630361,0.000000055,684.334688154],[0.016951444,0.003304092,-0.999833129,-0.005953702],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ABIZQ:=[[506.291627322,-253.783365737,388.558635137],[0.048017698,0.000000003,0.998846485,0.000000015],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ABDER:=[[506.291629282,226.021103625,388.622692684],[0.048017701,0.000000018,0.998846485,0.00000002],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ARIZQ:=[[506.29162693,-256.170100025,679.499961722],[0.048017687,0.000000009,0.998846486,0.000000018],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ARDER:=[[506.291627161,220.857576717,679.499972612],[0.048017682,0.000000017,0.998846486,0.000000015],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MEDIZQ:=[[506.291627037,-253.767099715,522.582159184],[0.048017693,0.000000003,0.998846485,0.000000019],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MEDAB:=[[506.291623822,0.513932306,386.976873124],[0.048017692,0.000000016,0.998846485,0.000000019],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget MEDDER:=[[506.291628918,223.46260662,524.844215049],[0.048017696,0.000000016,0.998846485,0.000000019],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ESARIZ:=[[506.291630319,-82.198641772,583.072518643],[0.048017736,0.000000033,0.998846483,0.00000004],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ESABIZ:=[[506.291626368,-82.102947272,485.41029086],[0.048017736,0.000000034,0.998846483,0.000000039],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ESABDER:=[[506.291625505,60.214577622,486.823036734],[0.048017755,0.000000033,0.998846482,0.000000033],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ESARDER:=[[506.291634544,66.709344565,580.478724398],[0.048017756,0.000000039,0.998846482,0.000000034],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70:=[[506,6.405959787,339.932757836],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80:=[[506,-160.018170225,491.947479466],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_71:=[[506,175.088548265,491.632896675],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_81:=[[506,-1.704835303,679.003520389],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INI:=[[665.640325542,0,487.5],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_101:=[[353.82458167,-224.535590676,250.806277952],[0.00202353,-0.003465526,0.999900105,-0.013552704],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_111:=[[747.686228745,-117.051291017,250.806280516],[0.002023524,-0.003465509,0.999900105,-0.013552701],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_121:=[[466.845306089,-38.32338743,250.806279746],[0.002023558,-0.003465523,0.999900105,-0.013552695],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_131:=[[742.606095287,66.748354666,247.832729453],[0.002023575,-0.003465524,0.999900105,-0.013552682],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_132:=[[454.24934101,138.952574915,246.642655894],[0.002023575,-0.003465524,0.999900105,-0.013552682],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_91:=[[353.824594616,0.000000549,250.806292849],[0.00202354,-0.003465524,0.999900105,-0.01355271],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_142:=[[665.64041018,0,861.837012818],[0.499999994,0,0.866025407,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget altu_caja:=[[353.824594616,0.000000549,317.848059172],[0.00202354,-0.003465524,0.999900105,-0.01355271],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget altu_tapa:=[[353.824582675,0.00000031,474.070776702],[0.00202352,-0.003465523,0.999900105,-0.013552711],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INI_TOOL_2:=[[506.291630361,0.000000055,684.334688154],[0.016951444,0.003304092,-0.999833129,-0.005953702],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_182:=[[665.640420098,-85.360458869,587.499963629],[0.500000009,0,0.866025398,-0.000000007],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_192:=[[541.099087196,-85.360454561,587.499966997],[0.500000008,0,0.866025399,0.000000002],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_202:=[[541.099082331,64.503649199,587.499967763],[0.500000014,0.000000002,0.866025396,0.000000004],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_212:=[[890.204075016,64.503647282,587.4999638],[0.50000001,0.000000002,0.866025398,0.000000004],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_222:=[[890.204069077,64.503618601,587.500000402],[0.573032675,0.225673257,0.76972677,-0.168005456],[0,1,-2,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget cablat:=[[665.640421771,-0.00000793,587.49996474],[0.479991416,0.140029407,0.831369522,0.242538089],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget cablat2:=[[665.640420566,-0.000009406,587.499964594],[0.484065894,-0.125220713,0.838426714,-0.216888515],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget INI_TOOL_2_2:=[[506.291630361,0.000000055,684.334688154],[0.016951444,0.003304092,-0.999833129,-0.005953702],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_152:=[[-0.963032928,509.640010522,475.218174883],[0.080203662,-0.703189698,0.701874156,0.080400809],[1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_162:=[[-10.300026127,-509.536826166,475.218174883],[0.079509613,0.709601869,0.695390732,-0.081087231],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_172:=[[665.640420298,181.047016927,609.643692497],[0.500000017,0.000000006,0.866025394,0.000000032],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_cen:=[[660.297702447,-7.372961274,564.393522923],[0.483027998,0.004888302,0.875587109,-0.002696689],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_der:=[[487.932313273,444.93760695,564.393522923],[0.450404663,-0.316362197,0.816450636,0.174524952],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_derd:=[[553.589537064,314.090127827,489.780166033],[0.411582805,-0.230912076,0.874916807,0.108626831],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_izq:=[[474.535955149,-459.198261849,564.393522923],[0.447769621,0.328423296,0.811674085,-0.181178601],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_izqd:=[[573.869959953,-275.294847407,489.780166033],[0.415074942,0.200687881,0.882340173,-0.094408612],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_1:=[[510.581971914,-262.52385287,276.40159081],[0.071314829,-0.234598663,-0.969319224,-0.017259911],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_2:=[[510.581967502,10.186684173,276.401598409],[0.071314778,-0.234598704,-0.969319217,-0.017259947],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_3:=[[510.581960996,266.120914072,276.401597862],[0.071314801,-0.234598704,-0.969319215,-0.017259948],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_4:=[[701.720733974,-241.16510292,276.401596915],[0.071390537,0.23029737,-0.970350158,0.016943509],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_5:=[[701.720735215,16.842353635,276.401584514],[0.07139064,0.230297311,-0.970350166,0.01694347],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_6:=[[701.720701408,257.984497295,276.401631453],[0.071390696,0.230297295,-0.970350166,0.016943449],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
   
     PROC main()
         !Conexi�n
fin:
         SocketCreate serverSocket;
       SocketBind serverSocket, "192.168.125.1", 1900;
           SocketListen serverSocket; !Se pone en modo de escucha
          
              SocketAccept serverSocket,clientSocket;
        SocketSend clientSocket \Str:="Conexi�n con ABB correcta";

WHILE Bucle = 0 DO !Hay que hacer un bucle para mantener la conexi�n todo el rato al cliente, porque si no har�a un solo ciclo
SocketReceive clientSocket \str:=data; !Lo que reciba por el socket del cliente lo almacenar� en la variable data
SocketReceive clientSocket \str:=program;
SocketReceive clientSocket \str:=tablas;
 
 
           sing:=data;
           selfi:= data;
           finish:= data;
         
           
             
             IF program = "1114" THEN
             MoveJ Target_izq,v1000,fine,pinza\WObj:=prog;
             MoveJ Target_izqd,v1000,fine,pinza\WObj:=prog;             
             ENDIF
             
              IF program = "1115" THEN
             MoveJ Target_izq,v1000,fine,pinza\WObj:=prog; 
            MoveJ Target_derd,v1000,fine,pinza\WObj:=prog; 
              ENDIF
              
            IF program = "1214" THEN 
                 MoveJ Target_cen,v1000,fine,pinza\WObj:=prog;
                MoveJ Target_izqd,v1000,fine,pinza\WObj:=prog;
            ENDIF
            
             IF program = "1215" THEN 
                  MoveJ Target_cen,v1000,fine,pinza\WObj:=prog;
                 MoveJ Target_derd,v1000,fine,pinza\WObj:=prog;
             ENDIF
              
             IF program = "1314" THEN 
                 MoveJ Target_der,v1000,fine,pinza\WObj:=prog;
                 MoveJ Target_izqd,v1000,fine,pinza\WObj:=prog;
             ENDIF
             
              IF program = "1315" THEN 
                  MoveJ Target_der,v1000,fine,pinza\WObj:=prog;
                  MoveJ Target_derd,v1000,fine,pinza\WObj:=prog;
              ENDIF
             
              !comienzo lectura de tablas
                             
              IF tablas = "12" THEN
         tabla_1_2;              
            ENDIF
            IF tablas = "13" THEN
         tabla_1_3;              
            ENDIF
             IF tablas = "14" THEN
         tabla_1_4;              
            ENDIF
             IF tablas = "15" THEN
         tabla_1_5;              
            ENDIF
             IF tablas = "16" THEN
         tabla_1_6;              
            ENDIF
            
              IF tablas = "21" THEN
         tabla_2_1;              
            ENDIF
            IF tablas = "23" THEN
         tabla_2_3;              
            ENDIF
             IF tablas = "24" THEN
         tabla_2_4;              
            ENDIF
             IF tablas = "25" THEN
         tabla_2_5;              
            ENDIF
             IF tablas = "26" THEN
         tabla_2_6;              
            ENDIF
            
             
              IF tablas = "31" THEN
         tabla_3_1;              
            ENDIF
            IF tablas = "32" THEN
         tabla_3_2;              
            ENDIF
             IF tablas = "34" THEN
         tabla_3_4;              
            ENDIF
             IF tablas = "35" THEN
         tabla_3_5;              
            ENDIF
             IF tablas = "36" THEN
         tabla_3_6;              
            ENDIF
            
              
              IF tablas = "41" THEN
         tabla_4_1;              
            ENDIF
            IF tablas = "42" THEN
         tabla_4_2;              
            ENDIF
             IF tablas = "43" THEN
         tabla_4_3;              
            ENDIF
             IF tablas = "45" THEN
         tabla_4_5;              
            ENDIF
             IF tablas = "46" THEN
         tabla_4_6;              
            ENDIF
            
            IF tablas = "51" THEN
         tabla_5_1;              
            ENDIF
            IF tablas = "52" THEN
         tabla_5_2;              
            ENDIF
             IF tablas = "53" THEN
         tabla_5_3;              
            ENDIF
             IF tablas = "54" THEN
         tabla_5_4;              
            ENDIF
             IF tablas = "56" THEN
         tabla_5_6;              
            ENDIF 
            
               IF tablas = "61" THEN
         tabla_6_1;              
            ENDIF
            IF tablas = "62" THEN
         tabla_6_2;              
            ENDIF
             IF tablas = "63" THEN
         tabla_6_3;              
            ENDIF
             IF tablas = "64" THEN
         tabla_6_4;              
            ENDIF
             IF tablas = "65" THEN
         tabla_6_5;              
            ENDIF  
            
            
            
            
              
             IF sing = "dancing" THEN
           MoveJ INI,v1000,z100,pinza\WObj:=INICIO;
    bailecito;
     WaitTime(2);
              ENDIF    
              
                IF selfi = "self1" THEN
  MoveJ Target_142,v1000,fine,pinza\WObj:=selfie;
     WaitTime(2);
              ENDIF  
              
              
               IF selfi = "self2" THEN
    MoveJ Target_152,v1000,fine,pinza\WObj:=selfie;
     WaitTime(2);
              ENDIF  
              
               IF selfi = "self3" THEN
   MoveJ Target_162,v1000,fine,pinza\WObj:=selfie;
     WaitTime(2);
              ENDIF  
               IF selfi = "self4" THEN
     MoveJ Target_172,v1000,fine,pinza\WObj:=selfie;
     WaitTime(2);
              ENDIF  
              
              
              
            IF finish = "999000" THEN
    MoveJ INI,v1000,z100,pinza\WObj:=INICIO;
     SocketClose clientSocket;
            SocketClose serverSocket;
    GOTO fin;
              ENDIF                    
                      
         ENDWHILE
      
           ENDPROC
    
    
    
          
  
   
   
    PROC bailecito()
        MoveJ Target_182,v300,fine,pinza\WObj:=baile;
        MoveJ Target_192,v300,fine,pinza\WObj:=baile;
        MoveJ Target_202,v300,fine,pinza\WObj:=baile;
        MoveJ Target_212,v300,fine,pinza\WObj:=baile;
        MoveJ Target_222,v300,fine,pinza\WObj:=baile;
        MoveJ cablat,v300,fine,pinza\WObj:=baile;
        MoveJ cablat2,v300,fine,pinza\WObj:=baile;
        MoveJ INI,v300,fine,pinza\WObj:=INICIO;
    ENDPROC
    PROC SELF()
        MoveJ Target_142,v1000,fine,pinza\WObj:=selfie;
        MoveJ Target_152,v1000,fine,pinza\WObj:=selfie;
        MoveJ Target_162,v1000,fine,pinza\WObj:=selfie;
        MoveJ Target_172,v1000,fine,pinza\WObj:=selfie;
    ENDPROC
    PROC mov_prog()
        MoveJ Target_cen,v1000,fine,pinza\WObj:=prog;
        MoveJ Target_der,v1000,fine,pinza\WObj:=prog;
        MoveJ Target_derd,v1000,fine,pinza\WObj:=prog;
        MoveJ Target_izq,v1000,fine,pinza\WObj:=prog;
        MoveJ Target_izqd,v1000,fine,pinza\WObj:=prog;
    ENDPROC
    PROC tabla_prog()
        MoveJ Target_1,v1000,fine,pinza\WObj:=tabla;
        MoveJ Target_2,v1000,fine,pinza\WObj:=tabla;
        MoveJ Target_3,v1000,fine,pinza\WObj:=tabla;
        MoveJ Target_4,v1000,fine,pinza\WObj:=tabla;
        MoveJ Target_5,v1000,fine,pinza\WObj:=tabla;
        MoveJ Target_6,v1000,fine,pinza\WObj:=tabla;
    ENDPROC
    
    PROC tabla_1_2()
     MoveJ Target_1,v1000,fine,pinza\WObj:=tabla;
     MoveJ Target_2,v1000,fine,pinza\WObj:=tabla;    
    ENDPROC
     PROC tabla_1_3()
    MoveJ Target_1,v1000,fine,pinza\WObj:=tabla;
    
    MoveJ Target_3,v1000,fine,pinza\WObj:=tabla;
    
     ENDPROC
     PROC tabla_1_4()
    MoveJ Target_1,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_4,v1000,fine,pinza\WObj:=tabla;
     ENDPROC
      PROC tabla_1_5()
    MoveJ Target_1,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_5,v1000,fine,pinza\WObj:=tabla;
      ENDPROC
    PROC tabla_1_6()
    MoveJ Target_1,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_6,v1000,fine,pinza\WObj:=tabla;
    ENDPROC
    
      PROC tabla_2_1()
     MoveJ Target_2,v1000,fine,pinza\WObj:=tabla;
     MoveJ Target_1,v1000,fine,pinza\WObj:=tabla;    
    ENDPROC
     PROC tabla_2_3()
    MoveJ Target_2,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_3,v1000,fine,pinza\WObj:=tabla;
     ENDPROC
     PROC tabla_2_4()
    MoveJ Target_2,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_4,v1000,fine,pinza\WObj:=tabla;
     ENDPROC
      PROC tabla_2_5()
    MoveJ Target_2,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_5,v1000,fine,pinza\WObj:=tabla;
      ENDPROC
    PROC tabla_2_6()
    MoveJ Target_2,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_6,v1000,fine,pinza\WObj:=tabla;
    ENDPROC  
      
     PROC tabla_3_1()
     MoveJ Target_3,v1000,fine,pinza\WObj:=tabla;
     MoveJ Target_1,v1000,fine,pinza\WObj:=tabla;    
    ENDPROC
     PROC tabla_3_2()
    MoveJ Target_3,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_2,v1000,fine,pinza\WObj:=tabla;
     ENDPROC
     PROC tabla_3_4()
    MoveJ Target_3,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_4,v1000,fine,pinza\WObj:=tabla;
     ENDPROC
      PROC tabla_3_5()
    MoveJ Target_3,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_5,v1000,fine,pinza\WObj:=tabla;
      ENDPROC
    PROC tabla_3_6()
    MoveJ Target_3,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_6,v1000,fine,pinza\WObj:=tabla;
    ENDPROC  
     
      PROC tabla_4_1()
     MoveJ Target_4,v1000,fine,pinza\WObj:=tabla;
     MoveJ Target_1,v1000,fine,pinza\WObj:=tabla;    
    ENDPROC
     PROC tabla_4_2()
    MoveJ Target_4,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_2,v1000,fine,pinza\WObj:=tabla;
     ENDPROC
     PROC tabla_4_3()
    MoveJ Target_4,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_3,v1000,fine,pinza\WObj:=tabla;
     ENDPROC
      PROC tabla_4_5()
    MoveJ Target_4,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_5,v1000,fine,pinza\WObj:=tabla;
      ENDPROC
    PROC tabla_4_6()
    MoveJ Target_4,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_6,v1000,fine,pinza\WObj:=tabla;
    ENDPROC  
    
    
      PROC tabla_5_1()
     MoveJ Target_5,v1000,fine,pinza\WObj:=tabla;
     MoveJ Target_1,v1000,fine,pinza\WObj:=tabla;    
    ENDPROC
     PROC tabla_5_2()
    MoveJ Target_5,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_2,v1000,fine,pinza\WObj:=tabla;
     ENDPROC
     PROC tabla_5_3()
    MoveJ Target_5,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_3,v1000,fine,pinza\WObj:=tabla;
     ENDPROC
      PROC tabla_5_4()
    MoveJ Target_5,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_4,v1000,fine,pinza\WObj:=tabla;
      ENDPROC
    PROC tabla_5_6()
    MoveJ Target_5,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_6,v1000,fine,pinza\WObj:=tabla;
    ENDPROC  
    
    
      PROC tabla_6_1()
     MoveJ Target_6,v1000,fine,pinza\WObj:=tabla;
     MoveJ Target_1,v1000,fine,pinza\WObj:=tabla;    
    ENDPROC
     PROC tabla_6_2()
    MoveJ Target_6,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_2,v1000,fine,pinza\WObj:=tabla;
     ENDPROC
     PROC tabla_6_3()
    MoveJ Target_6,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_3,v1000,fine,pinza\WObj:=tabla;
     ENDPROC
      PROC tabla_6_5()
    MoveJ Target_6,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_5,v1000,fine,pinza\WObj:=tabla;
      ENDPROC
    PROC tabla_6_4()
    MoveJ Target_6,v1000,fine,pinza\WObj:=tabla;
    MoveJ Target_4,v1000,fine,pinza\WObj:=tabla;
    ENDPROC  
    
     
ENDMODULE