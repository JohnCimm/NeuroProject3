%% Connect the Stim Box
addpath("AdditionalFiles");
s = ArdStim;
%a_array = randi([0 5],100,1);
%f_array = randi([0 5],100,1);
%pw_array = randi([0 5],100,1);
%% Run Stim

reply = input('Do you want more? Y/N [Y]:','s');
if isempty(reply)
    reply = 'N';
end

% CONSTANT VARIABLES $$$$$$$$$$$$$$$$$$$$

amp=1;%mA


pw=200;%us

freq=30;%Hz
a_array = shuffle(linspace(2,6,20))
f_array = shuffle(linspace(50 , 100,20))
pw_array = linspace(200,200,20)
% all 3 trials
for i = 1:3 
    
    %s.stim([amp,pw,freq,1])
    
    j = 1;
    while reply == 'Y' 
       [a,f] = main_switch(i,j,f_array,a_array)

        s.stim([a,pw,f,1])
        
        %X = sprintf('Random Amplitude: %d mA, Random Frequency: %d Hz',a_array(j),f_array(j) );
        disp(X)
        reply = input('Do you want more? Y/N [Y]:','s');
        if isempty(reply)
            reply = 'N';
        elseif i == 10;
        break;
        end
        j = j+1;
    end
end 
%Change the values below to adjust stimulation



%% Stop Stim
s.stim();

%% close connection
s.close();