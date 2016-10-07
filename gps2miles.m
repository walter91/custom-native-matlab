function [mi] = gps2miles(start, finnish)
%gps2miles returns the distance in miles between two GPS coordinates
%   miles = gps2miles(start, finnish), where start and finnish are latitude
%   longitude array pairs [LAT, LON] or [LAT; LON].

mi = 3947 * acos(cos(deg2rad(90-finnish(1)))*cos(deg2rad(90-start(1)))+...
        sin(deg2rad(90-finnish(1)))*sin(deg2rad(90-start(1)))*...
        cos(deg2rad(finnish(2)-start(2))))
