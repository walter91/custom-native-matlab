function [mat] = rotateMat(axis, angle, unit)

if unit == 'radians'
    
elseif unit == 'degrees'
   angle = angle*pi/180; 
end

if axis == 1
    mat = [1, 0, 0;...
           0, cos(angle), sin(angle);...
           0, -sin(angle), cos(angle)];
elseif axis == 2
    mat = [cos(angle), 0, -sin(angle);...
           0, 1, 0;...
           sin(angle), 0, cos(angle)];
elseif axis == 3
    mat = [cos(angle), sin(angle), 0;...
           -sin(angle), cos(angle), 0;...
           0, 0, 1];
else
    mat = zeros(3);
end

end
           