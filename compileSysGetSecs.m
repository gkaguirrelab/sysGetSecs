function compileSysGetSecs

% Use this function to compile sysGetSecs. This can be run at the beginning
% of every matlab function calling sysGetSecs, as a good measure. Or to
% automatically compile for use in other application. Note that sysGetSecs
% folder needs to be on matlab's path for this function to work.

%find path
[sysGetSecPath,~,~] = fileparts(which('sysGetSecs.m'));
%compile
system (sprintf(['gcc ' sysGetSecPath '/sysGetSecs.m -o ' sysGetSecPath '/sysGetSecs']));
