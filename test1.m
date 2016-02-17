test = zeros(512,512,120);
test(1,1,1) =1;
test(2,2,2) =1;
test(2,2,3) =1;
test(2,2,4) =1;
test(3,3,5) =1;




for i = 1:512
    for j = 1:512
        for k = 1:120
            if test(i,j,k) == 1
                i,j,k
                break;
            end
        end
    end
end
