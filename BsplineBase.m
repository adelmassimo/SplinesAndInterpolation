function B = BsplineBase(x, y, p, i)
%sommatoria
        sum = 0;
        for k = 0: p+1
           %produttoria
           prod = 1;
           for h = 0:p+1
               if h ~= k
               prod = prod*(y(i+k) - y(i+h));
               end
           end
           sum =  sum + PT (x, y(i+k), p)/prod;
         end
         B = (-1)^(p+1)*(y(i+p+1) - y(i))*sum;
end