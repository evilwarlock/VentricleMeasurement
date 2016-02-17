% calculate if point p2 is in the cone of p1 
% x = the tip of the cone
% dir = the normalized axis vector, pointing from the tip to the base
% h = height
% r = base radius
% 
% p = point to test
% 
% So you project p onto dir to find the point's distance along the axis:
% 
% cone_dist = dot(p - x, dir)
% 
% At this point, you can reject values outside 0 <= cone_dist <= h.
% 
% Then you calculate the cone radius at that point along the axis:
% 
% cone_radius = (cone_dist / h) * r
% 
% And finally calculate the point's orthogonal distance from the axis to compare against the cone radius:
% 
% orth_distance = length((p - x) - cone_dist * dir)
% 
% is_point_inside_cone = (orth_distance < cone_radius)

function [boolResult] = boolInCone(p1,p2)
    


end