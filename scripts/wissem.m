% Define the range of q2 and q3 values
q2 = linspace(-pi/6, pi/2, 100);  % Adjust the range and resolution as needed
q3 = linspace(-pi/2, 3*pi/4, 100);

% Create a grid of (q2, q3) values using meshgrid
[Q2, Q3] = meshgrid(q2, q3);

% Calculate the function values at each point in the grid
% Replace 'your_function' with your actual function
gamma=0.8110; beta=0.7141;
Z = 1350*sin(Q3) + 358*cos(4*pi/3+2*gamma-Q3-Q2-beta)*sin(Q3) + 358*cos(Q3)*sin(Q3)*sin(4*pi/3+2*gamma-Q3-Q2-beta) ;

% Create a 3D surface plot
figure
surf(Q2, Q3, Z)

% Label the axes and add a title
xlabel('q2');
ylabel('q3');
zlabel('Pz(q2, q3)');
title('3D Plot of f(q2, q3)');
% Plot the plane z = 0
hold on;  % Allow multiple plots on the same graph
zPlane = zeros(size(Q2));  % Create a plane at z = 0
surf(Q2, Q3, zPlane, 'FaceAlpha', 0.5, 'EdgeColor', 'none', 'FaceColor', 'cyan');  % Plot the plane in cyan with transparency
hold off;  % Release the hold on the plot