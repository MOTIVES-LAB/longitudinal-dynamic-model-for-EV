clc;
clear;


%% ======= initial values
SOC_initial=0.8; 
%% ========
load mod_tabs

R = 0.017;
C = 32000;

Ts = 0.1;          %time step
Decimation = 10;
%% ======================constants=========================%%
g  = 9.81;          %Acceletation of gravity
radiance=0.2;

%% =================vehicle parameters=====================%%
m_Curb_WoBat_kg = 826; % curb weight without battery
r_Wheel = 0.284;    % wheel radius

f0 = 0.021;        % rolling resistant coefficients
f1 = 0;
f4 = 0;

% C_D = 0.42;         % wind resistant coeffiecients
% C_D = 0.35;         % wind resistant coeffiecients
% C_D = 0.28;         % wind resistant coeffiecients
% A = 1.87;           % frontal area

A_Drag = 0.78;        % drag area
% A_Drag = 0.68;        % drag area
% A_Drag = 0.58;        % drag area


%% =================motor parameters=====================%%
Mot_ttq_max=226;
Mot_P_max=70;     
Mot_RPM_max=12000;
      

%% =================transmission parameters=====================%%

r_gear = 9.34;      % reduction gear

eff_trans = 0.90;


%% =================brake parameters=====================%%
T_brk_max = 800;
r_regen = 0.3;

%% =================driver parameters=====================%%
Kp=0.3;
Ki=0.0;

%% =================driving cycle =====================%%

%driving_cyc = xlsread('UDDS.xls');
% driving_cyc = xlsread('NEDC.xls');
%%===================Battery parameters==============================%%
%SOC_initial=1; 
%Initial SOC Value0.641

Bat_Cap_Ah=50;       %Battery Capacity
% Battery parameters
Dens_Bat_WhPerkg = 85; % battery energy density
%%====================Accessory Loss===================================%%
Acce_P=250;

%%====================driving cycle===================================%%
% % Driving cycle
cycles = xlsread('NEDC');

t = cycles(:,1);
v = cycles(:,2);
v_init = v(1)/3.6;
tf = t(end);
simin = cycles';
% 

    % E_Bat_kWh = Bat_Cap_Ah * ;
    
    % m_Bat_kg = E_Bat_kWh*1000/Dens_Bat_WhPerkg; % battery weight

    
    % Longitudinal dynamics parameters
    m = m_Curb_WoBat_kg; % + m_Bat_kg;
    
    sim('EV_mod.slx')

    

