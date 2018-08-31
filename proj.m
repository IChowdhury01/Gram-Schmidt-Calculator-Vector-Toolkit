% This function projects a vector A onto another vector B
% Only works for 1-dimensional subspaces B. For higher dimension subspaces, use the orthoProj function
function P = proj (A, B)
P = dot (B, A) ./ dot(B, B) .* B;
end