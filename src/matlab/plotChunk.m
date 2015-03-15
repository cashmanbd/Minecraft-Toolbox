function plotChunk( chunk_data )
    
    dimensions = size(chunk_data);
    for i=1:dimensions(1)
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

function plotPoint(chunk_data,i,j,k) 
    x = [i, i,   i,   i+1, i+1, i+1];
    y = [k, k+1, k+1, k+1, k,   k];
    z = [j, j,   j+1, j+1, j+1, j];
    
    
    fill3(x, y, z, getColor(chunk_data(i,j,k)), 'EdgeColor', 'none');
    
end

function color = getColor(block_type) 
    switch block_type
        case 1
            color = [0.33, 0.33, 0.33];
        case 3
            color = [0.13, 0.55, 0.13];
        case 7
            color = [0.75, 0.75, 0.75];
        case 9
            color = [0, 0, 1];
        case 13
            color = [0.43, 0.43, 0.43];
        case 15
            color = [0.29, 0.29, 0.29];
        otherwise
            color = 'white';
    end
end