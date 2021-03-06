function plotChunk(chunk_data, h, block_id)
    disp('Start plotting...');
    dimensions = size(chunk_data);
    for i=1:dimensions(1)
        for ii=1:dimensions(2)
            for iii=1:dimensions(3)
                plotPoint(chunk_data,i,ii,iii,h, block_id);
                %hold on;
            end;
        end
    end
    disp('Done plotting chunks...');
    hold on;
    alpha(0.5);
    axis([1 32 1 32 1 16]);
    disp('Done plotChunk');
end

function plotPoint(chunk_data,i,j,k,h, block_id) 
    x = [i, i,   i,   i+1, i+1, i+1];
    y = [k, k+1, k+1, k+1, k,   k];
    z = [j, j,   j+1, j+1, j+1, j];
    
    x = i;
    y = k;
    z = j;
    
    p1 = [x y z];
    p2 = [x+1 y z];
    p3 = [x+1 y+1 z];
    p4 = [x y+1 z]; 
    
    p5 = [x y z+1];
    p6 = [x+1 y z+1];
    p7 = [x+1 y+1 z+1];
    p8 = [x y+1 z+1];
    
    block = chunk_data(i,j,k);
    if (block == block_id)
        %fill3(x, y, z, getColor(block), 'EdgeColor', 'none', 'Parent', h);
        poly_rectangle(p1,p2,p3,p4,getColor(block),h);
        poly_rectangle(p5,p6,p7,p8,getColor(block),h);
        poly_rectangle(p2,p6,p7,p3,getColor(block),h);
        poly_rectangle(p2,p6,p5,p1,getColor(block),h);
    end;
end

function poly_rectangle(p1, p2, p3, p4, color, h)
    % The points must be in the correct sequence.
    % The coordinates must consider x, y and z-axes.
    x = [p1(1) p2(1) p3(1) p4(1)];
    y = [p1(2) p2(2) p3(2) p4(2)];
    z = [p1(3) p2(3) p3(3) p4(3)];
    fill3(x, y, z, color, 'Parent', h); %'EdgeColor', 'none', 
    hold on
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
        case 11
            color = [1, 0.14, 0];
        case 13
            color = [0.43, 0.43, 0.43];
        case 15
            color = [0.29, 0.29, 0.29];
        case 78
            color = [0, 0, 0];
        otherwise
            color = 'white';
            disp('Unknown block_type');
            disp(block_type);
    end
end