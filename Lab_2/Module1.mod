MODULE Module1
    PERS robtarget Target_x;
    VAR num boton:=0;
    VAR intnum mueve;
    CONST jointtarget Home:=[[0,0,0,0,45,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    !PERS tooldata CualquierCosa:=[TRUE,[[24.1,0,194.7],[0.923879533,0,0.382683432,0]],[0.3,[0,0,1],[1,0,0,0],0,0,0]];
    PERS tooldata CualquierCosa:=[TRUE,[[22.682,0,131.636],[0.996194698,0,0.087155743,0]],[0.1,[0,0,1],[1,0,0,0],0,0,0]];
    PERS wobjdata Workobject_8:=[FALSE,TRUE,"",[[150,100,0],[1,0,0,0]],[[351.920963746,301.866615458,180],[0,0.710877818,0.703315525,0]]];
    CONST robtarget Target_70:=[[-14.359843041,52.548052351,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80:=[[-44.466286156,42.756014866,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90:=[[-44.423126649,46.791440476,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_100:=[[-36.007128456,49.424438298,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_110:=[[-35.884669856,60.874350721,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_120:=[[-44.242428715,63.686746492,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_130:=[[-44.197449229,67.892340652,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_140:=[[-14.307323641,57.458630502,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_150:=[[-13.943587799,91.468030671,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_160:=[[-14.201504851,67.352716184,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_170:=[[-17.750734604,67.39067575,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_180:=[[-17.643095834,77.454929981,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_190:=[[-44.092150433,77.737806747,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_200:=[[-44.04951092,81.724612772,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_210:=[[-17.600456321,81.441736005,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_220:=[[-17.492817552,91.505990237,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_230:=[[-13.91108817,94.506754775,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_240:=[[-43.909372522,94.827591107,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_250:=[[-43.708654816,113.594751171,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_260:=[[-40.159425063,113.556791605,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_270:=[[-40.317503256,98.776437565,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_280:=[[-29.18361814,98.657358926,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_290:=[[-29.036199825,112.44101146,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_300:=[[-25.486970072,112.403051894,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_310:=[[-25.634388387,98.61939936,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_320:=[[-17.417678411,98.531520364,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_330:=[[-17.259600218,113.311874405,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_340:=[[-13.710370465,113.273914839,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_350:=[[-13.91108817,94.506754775,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10:=[[-44.732003119,17.911406594,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[-18.89069334,17.635029753,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[-36.383734505,25.577831517,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_40:=[[-18.698035542,35.64858624,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_50:=[[-44.539345321,35.924963081,0],[0.703315525,0,0,-0.710877818],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    VAR bool n:=TRUE;
    VAR intnum activate;
    PROC main()
        !Add your code here
        CONNECT mueve WITH sostenido;
        ISignalDI DI_01,1,mueve;
        CONNECT activate WITH pausa;
        ISignalDI DI_02,1,activate;
        set DO_01;
        WHILE TRUE DO
            IF n THEN
                Homming;
                Path_40;
                Path_10;
                Path_20;
                Path_30;
                Homming;
                n:=FALSE;
                Reset DO_01;
            ENDIF
        ENDWHILE
    ENDPROC
    
    PROC Homming()
        Target_x:=CRobT(\Tool:=CualquierCosa \WObj:=Workobject_8);
        Target_x.trans.z:=Target_x.trans.z-10;
        MoveJ Target_x,v100,z10,CualquierCosa\WObj:=Workobject_8;
        MoveAbsJ home, v100, z10, tool0;
    ENDPROC
    
    PROC Path_10()
        MoveL Target_70,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_80,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_90,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_100,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_110,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_120,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_130,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_140,v100,z100,CualquierCosa\WObj:=Workobject_8;
    ENDPROC
    PROC Path_20()
        MoveL Target_150,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_160,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_170,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_180,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_190,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_200,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_210,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_220,v100,z100,CualquierCosa\WObj:=Workobject_8;
    ENDPROC
    LOCAL PROC Path_30()
        MoveL Target_230,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_240,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_250,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_260,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_270,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_280,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_290,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_300,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_310,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_320,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_330,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_340,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_350,v100,z100,CualquierCosa\WObj:=Workobject_8;
    ENDPROC
    PROC Path_40()
        Movej Target_10,v100,z100,CualquierCosa\WObj:=Workobject_8;
        Movej Target_20,v100,z100,CualquierCosa\WObj:=Workobject_8;
        Movej Target_30,v100,z100,CualquierCosa\WObj:=Workobject_8;
        Movej Target_40,v100,z100,CualquierCosa\WObj:=Workobject_8;
        MoveL Target_50,v100,z100,CualquierCosa\WObj:=Workobject_8;
    ENDPROC
   
    TRAP pausa
        WaitTime 1;
        n:=TRUE;
    ENDTRAP
    
    TRAP sostenido
        WaitTime 1;
        IF boton=0 THEN
            WaitTime 1;
            StorePath;
            boton:=1;
            Target_x:=CRobT(\Tool:=CualquierCosa \WObj:=Workobject_8);
            Target_x.trans.z:=Target_x.trans.z-10;
            MoveJ Target_x,v100,z10,CualquierCosa\WObj:=Workobject_8;
            MoveAbsJ home, v100, z10, tool0;
            RestoPath;
            StopMove;
            Reset DO_01;
        ELSEIF boton=1 THEN
            WaitTime 1;
            boton:=0;
            StorePath;
            StartMove;
            MoveJ Target_x,v100,z10,CualquierCosa\WObj:=Workobject_8;
            Target_x.trans.z:=Target_x.trans.z+10;
            MoveJ Target_x,v100,z10,CualquierCosa\WObj:=Workobject_8;
            Set DO_01;
            RestoPath;
            StartMove;
        ENDIF
    ENDTRAP
    
ENDMODULE