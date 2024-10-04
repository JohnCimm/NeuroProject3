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
amp=1;%mA


pw=200;%us

freq=30;%Hz
for i = 1:3 
    
    %s.stim([amp,pw,freq,1])
    a_array = randi([2 6],20,1)
    f_array = randi([50 100],20,1)
    pw_array = linspace(200,200,20)
    j = 1;
    while reply == 'Y' 
        j1 = random
        s.stim([a_array(j),pw_array(j),f_array(i),1])
        
        X = sprintf('Random Amplitude: %d mA, Random Frequency: %d Hz',a_array(j),f_array(j) );
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