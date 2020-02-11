%[textData] = textread("text_data.txt", "%f", 6951, "headerlines", 6, "delimeter", "\n");
m = dlmread("test_data.txt", ",", [6 0 6000 5]);
m(:, 1:5);
l = size(m);
p = l(1)
newLinspace = linspace(1, p, p);
index = newLinspace'; 
newTable = horzcat(index,m);
x = newTable(:, 1)';
y = newTable(:, 5)';
i = 1;

while (i < p)
  if (y(i) <= 500 && y(i)  > 0)
    y(i) = 0;
  endif
  if (y(i) >= -500 && y(i)  < 0)
    y(i) = 0;
  endif
  i = i+1;
endwhile

plot(x,y)
s = "hi shanky"