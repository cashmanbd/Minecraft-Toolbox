function [ folder ] = getLocation() 
    import java.lang.*;
    if ispc() 
        folder = fullfile(System.getenv('APPDATA'),...
                    '.minecraft', 'saves');
    elseif ismac() 
        folder = fullfile(char(System.getProperty('user.home')),...
                    'Library', 'Application Support',...
                    'minecraft', 'saves'); 
    else
        folder = fullfile(System.getProperty('user.home'),...
                    '.minecraft', 'saves');
    end
end

