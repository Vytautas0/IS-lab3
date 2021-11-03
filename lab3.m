%duom
x = 0.1:1/22:1;
d = (1 + 0.6*sin(2*pi*x/0.7) + 0.3*sin(2*pi*x))/2;

plot(x,d);

%2 pasirenkami...
c1=0.1909;
c2=0.9182;
r1=0.2;
r2=0.2;
n=0.1;

%3 pasirenkamos atsitiktines
w1 = rand(1);
w2 = rand(1);
b = rand(1);

for indx = 1:100
    for i=1:20
    I1 = exp(-((x(i)-c1).^2./(2*(r1^2))));
    I2 = exp(-((x(i)-c2).^2./(2*(r2^2))));

    
    %4 skaiciuojamas tinklo atsakas
    y=I1*w1+I2*w2+b;

    %5 skaiciuojama klaida
    e=d(i)-y;

    %6 Atnaujiname svorius w1, w2, b (kaip 1 lab)
    w1=w1+n*e*I1;
    w2=w2+n*e*I2;
    b=b+n*e;
    end
end


 for i=1:20
    I1 = exp(-((x(i)-c1).^2./(2*(r1^2))));
    I2 = exp(-((x(i)-c2).^2./(2*(r2^2))));

    
    %4 skaiciuojamas tinklo atsakas
    y(i)=I1*w1+I2*w2+b;
 end

plot(x,d,x,y)






