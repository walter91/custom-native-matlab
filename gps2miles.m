function [mi] = miles(start, enD)

mi = 3947 * acos(cos(deg2rad(90-enD(1)))*cos(deg2rad(90-start(1)))+sin(deg2rad(90-enD(1)))*sin(deg2rad(90-start(1)))*cos(deg2rad(enD(2)-start(2))))
