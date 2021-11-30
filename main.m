clear 
px = [3,4];
py = [3,2];
nx = [-2,-0.5];
ny = [1,2];

plot(px,py, '*');
hold on; axis equal;
quiver(px(1), py(1), nx(1), ny(1));
quiver(px(2), py(2), nx(2), ny(2));

syms x y
F(x,y) = nx(1) *x + ny(1)*y - (nx(1) * px(1)+ny(1)*py(1));
fimplicit(F, 'b');

G(x,y) = nx(2) *x + ny(2)*y - (nx(2) * px(2)+ny(2)*py(2));
fimplicit(G, 'g');

% to plot the intersection point
e = [F == 0, G == 0];
s = solve(e,[x y]);
I = [s.x, s.y];
plot(I(1), I(2), 'r.', 'MarkerSize', 20);
