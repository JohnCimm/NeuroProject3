%% Connect the Stim Box
addpath("AdditionalFiles");
s = ArdStim;
%a_array = randi([0 5],100,1);
%f_array = randi([0 5],100,1);
%pw_array = randi([0 5],100,1);
%% Run Stim

reply = input('Do you want to initiate the first trial? Y/N [Y]:','s');
if isempty(reply)
    reply = 'N';
end

% CONSTANT VARIABLES $$$$$$$$$$$$$$$$$$$$

amp=1;%mA


pw=200;%us

freq=30;%Hz
% DECISION ARRAY FROM USER
real_val = []
user_input = []
%
a_array = shuffle(linspace(2,6,10))
f_array = shuffle(linspace(50 , 100,10))
pw_array = linspace(200,200,10)
% all 3 trials
a_prev = 0
for i = 1:3 
   
    %s.stim([amp,pw,freq,1])
    
    j = 1;
    while reply == 'Y' 
       [a,f] = main_switch(i,j,f_array,a_array);

        %s.stim([a,pw,f,1])
        
        if j> 1
           [user_input,real_val] =compare_val(a,a_prev,user_input,real_val);
        end
        %X = sprintf('Random Amplitude: %d mA, Random Frequency: %d Hz',a_array(j),f_array(j) );
        %disp(X)
        reply = input('\n---------------------------------------------------------\n Do you want to continue? Y/N:','s');
        if isempty(reply)
            reply = 'N';
            display('No input, ending experiment.')
            
        elseif i == 10;
        break;
        end
        j = j+1;
        a_prev = a;
    end

end
display('Thanks for playing!')
%Change the values below to adjust stimulation



%% Stop Stim
s.stim();

%% close connection
s.close();