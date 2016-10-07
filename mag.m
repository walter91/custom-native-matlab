function magnitude = mag(varargin)
%MAG returns the length of a vector
%   MAG(A) where A is a 2 or 3 element vector
%
%   MAG(a,b,c) where a, b, and c are vector components. if c is not
%   provided it is assumed to be 0.

if length(varargin{1})==3   %if the first argument is a vector of length 3
    len1 = varargin{1}(1);
    len2 = varargin{1}(2);
    len3 = varargin{1}(3);
    
elseif length(varargin{1})==2  %if the first argument is a vector of length 2
    len1 = varargin{1}(1);
    len2 = varargin{1}(2);
    len3 = 0;

elseif length(varargin)==3  %if three arguments were provided
    len1 = varargin{1};
    len2 = varargin{2};
    len3 = varargin{3};

else
    len1 = varargin{1};
    len2 = varargin{2};
    len3 = 0;
end

magnitude = sqrt(len1^2 + len2^2 + len3);
end