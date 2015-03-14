function [ ] = plotChunk( chunk_data )
    
    dimensions = size(chunk_data);
    for i=1:dimensions(1)
        %plotPoint(chunk_data,i,1,1);
        for ii=1:dimensions(2)
            for iii=1:dimensions(3)
                plotPoint(chunk_data,i,ii,iii);
                hold on;
            end;
        end
    end
    hold on;
    alpha(0.5);
    axis([1 32 1 32 1 16]);
end

function a = plotPoint(chunk_data,i,j,k) 
    x = [i, i,   i,   i+1, i+1, i+1];% i+1];
    y = [k, k+1, k+1, k+1, k,   k];%   k+1];
    z = [j, j,   j+1, j+1, j+1, j];%   j];
    
  % x = [i, i, i; i+1, i+1, i; i+1, i+1, i; i, i, i];
  % y = [k, k, k; k, k, k; k, k+1, k+1; k, k+1, k+1];
  % z = [j, j+1, j; j, j+1, j+1; j+1, j+1, j+1; j+1, j+1, j];
   
  %  z = [j, j,   j+1, j+1; j+1,j+1, j+1, j+1; j, j+1,j+1, j];
    
  %  x = [i, i+1, i+1, i;   i,  i+1, i+1, i;   i, i,  i,   i];
  % y = [k, k,   k,   k;   k,  k,   k+1, k+1; k, k,  k+1, k+1];
    
    fill3(x, y, z, getColor(chunk_data(i,j,k)));
    
end

function color = getColor(block_type) 
    switch block_type
        case 1
            color = 'black';
        case 7
            color = 'cyan';
        case 9
            color = 'blue';
        case 13
            color = 'black';
        case 15
            color = 'black';
        otherwise
            color = 'white';
    end
end