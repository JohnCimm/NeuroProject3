
% Connect the Stim Box
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
%%
% CONSTANT VARIABLES $$$$$$$$$$$$$$$$$$$$

amp=8;%mA


pw=200;%us

f=100;%Hz
% DECISION ARRAY FROM USER

s.stim([amp,pw,f,1])
%%
a_array = shuffle(linspace(2,8,10))
f_array = shuffle(linspace(50 , 100,10))
pw_array = linspace(200,200,10)
%%
real_val = []
user_input = []
a_array = shuffle(linspace(2,8,10))
f_array = shuffle(linspace(50 , 100,10))
pw_array = linspace(200,200,10)
% all 3 trials

for i = 1:2 
    
    x = sprintf('Starting %dst experiment',i);
    disp(x)
    j = 1;
    reply = 'Y';
    while reply == 'Y' 

       s.stim();
       [a,f] = main_switch(i,j,f_array,a_array);
        
        
        time0 = tic;
        timeLimit = 1; % time limit for stimulation
        s.stim([a,pw,f,1])
         if toc(time0)>timeLimit % stops stimulation at time limit
           display('Stimulation started')
           s.stim([a,pw,f,1])
         end
        [user_input,real_val] =compare_switch(i,a,f,user_input,real_val);
        
       
           % stimulated started
        
        %X = sprintf('Random Amplitude: %d mA, Random Frequency: %d Hz',a_array(j),f_array(j) );
        %disp(X)
        reply = input('\n---------------------------------------------------------\n Do you want to continue? Y/N:','s');
        if isempty(reply) 
            reply = 'N';
            display('No input, ending experiment.')
        elseif toc(time0) > 120; % if two minutes with no answer, break
            break;
        elseif j == 10;
            reply = 'N';
            display('Going to next experiment/n')
        break;
        end
        j = j+1;
       
    end

end
display('Thanks for playing!')
%Change the values below to adjust stimulation



%%Stop Stim
s.stim();

%% close connection
s.close();