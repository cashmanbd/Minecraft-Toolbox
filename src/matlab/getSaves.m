function [ nameFolders ] = getSaves()
    contents = dir(getLocation());
    isub = [contents(:).isdir]; %# returns logical vector
    nameFolders = {contents(isub).name}';
    nameFolders(ismember(nameFolders,{'.','..'})) = [];
end

