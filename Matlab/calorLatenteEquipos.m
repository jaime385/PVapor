%Calculos del calor latente de los equipos
%Se utilizara la funcion XSteam para los calculos de las propiedades
%termodinamicas.

% hV_p = Entalpia de Vapor @ Presion determinada. El equipo lavavaillas L17A y L17 trabaja a 20 psi.(La funcion recibe BARES.)
calorLatenteA17kJ_Hr = XSteam('hV_p',1.37895) - XSteam('hL_p',1.37895) 

%Factor de conversion kJ/kg a Btu/lb
kJ_Hr_to_Btu_hora_factor = 0.429923;
%Valor en Btu/hr
calorLatenteA17Btu_Hr = calorLatenteA17kJ_Hr * kJ_Hr_to_Btu_hora_factor

% hV_p = Entalpia de Vapor @ Presion determinada. El equipo Sarten reclinable S46 trabaja a 3.5 psi.(La funcion recibe BARES.)
calorLatenteS46kJ_Hr = (XSteam('hV_p',0.241317) - XSteam('hL_p',0.241317)) * kJ_Hr_to_Btu_hora_factor %Se realiza la conversion.

% hV_p = Entalpia de Vapor @ Presion determinada. El equipo marmita M30A trabaja a 30 psi MAX.(La funcion recibe BARES.)
calorLatenteM30AkJ_Hr = (XSteam('hV_p',2.06843) - XSteam('hL_p',2.06843)) * kJ_Hr_to_Btu_hora_factor %Se realiza la conversion.