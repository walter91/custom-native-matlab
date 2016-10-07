function [mat] = rotate_mat(axis, angle, varargin)
%ROTATE_MAT reurns the rotation matrixabout a specified axis and angle
%   mat = ROTATE_MAT(axisNumber, angle, angleUnits) where angle units is a
%   string 'degrees' or 'radians'. If not provided, 'degrees' is the
%   default.

if length(varargin) == 0
    unit = 'degrees';
else
    unit = varargin{1};
end

if strcmp(unit, 'radians')
    %do nothing
elseif strcmp(unit, 'degrees')
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
           