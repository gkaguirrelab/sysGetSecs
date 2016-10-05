function sysGetSecsDemo
% After asking to compile, this demo will:
% 1. call PsychToolbox GetSecs 
% 2. wait for 3 seconds 
% 3. call sysGetSecs. 
% 4. display the elapsed time in seconds.

% Note that sysGetSecs
% folder needs to be on matlab's path for this function to work.

% Sept 2016 - written by Giulia Frazzetta
%%
% find path
[sysGetSecPath,~,~] = fileparts(which('sysGetSecs.m'));

% ask to compile
compile = input('\nDo you want to compile sysGetSecs first? [y/n]', 's');
if strcmp(compile, 'y')
    compileSysGetSecs
end

fprintf ('\nThis demo will:\n 1. call PsychToolbox GetSecs \n2. wait for 3 seconds \n3. call sysGetSecs. \n4. display the elapsed time in seconds.\n')
fprintf ('Press any key to begin\n');
pause

% call getsecs
GSTime = GetSecs;
%wait
WaitSecs(3);
% call sysGetSecs
[~, echo1] = system(sprintf([sysGetSecPath '/sysGetSecs']));
% convert from string to number and from nanoseconds to seconds
sGSTime = str2double(echo1) * 10^-9;

elapsed =  sGSTime - GSTime;
fprintf ('The elapsed time in seconds is: %.4f', elapsed);

    



