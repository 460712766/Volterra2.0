% function k13=k13f(k3)
%
% k13 is the first order component of the Wiener series corresponding to 
% the third order Wiener kernel k3.
% A it's the power of input sequence.
% Refer to the documentation and references provided
%
% If you want to contact the authors, please write to s.orcioni@univpm.it,
% or Simone Orcioni, DII, Università Politecnica delle Marche,
% via Brecce Bianche, 12 - 60131 Ancona, Italy.

% Copyright (C) 2006 Massimiliano Pirani
%
%  This program is free software; you can redistribute it and/or modify
%  it under the terms of the GNU General Public License as published by
%  the Free Software Foundation; either version 2 of the License, or
%  (at your option) any later version.
%
%  This program is distributed in the hope that it will be useful,
%  but WITHOUT ANY WARRANTY; without even the implied warranty of
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%  GNU General Public License for more details.
%
%  You should have received a copy of the GNU General Public License along
%  with this program; if not, write to the Free Software Foundation, Inc.,
%  51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

function k13=k13f(k3,A)

R3=size(k3,1);
diag=zeros(R3,1);
k13=zeros(R3,1);
for sgm1=1:R3
    for tau1=1:R3
        diag(tau1)=k3(tau1,tau1,sgm1);
    end
    k13(sgm1)=sum(diag);
end
k13=-3*A*k13;