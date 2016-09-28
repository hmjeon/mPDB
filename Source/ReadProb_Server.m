function name_prob = ReadProb_Server


%% Read the file
fid   = fopen('list_server.txt');
count = 0;

% Read problem list
str = strtrim(fgetl(fid));
while(~isempty(str))
    count = count + 1;
    name_prob{count} = str;
    str = fgetl(fid);
    if(~ischar(str))
        break;
    end
    str = strtrim(str);
end

fclose(fid);

end