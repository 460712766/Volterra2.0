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
%
% If you want to contact the authors, please write to s.orcioni@univpm.it,
% or Simone Orcioni, DEIT, Universit� Politecnica delle Marche,
% via Brecce Bianche, 12 - 60131 Ancona, Italy.
% If you are using this program for a scientific work, we encourage you to cite
% the following paper (the file cite.bib, containing the reference in bibtex
% format is also provided):
% Simone Orcioni, Massimiliano Pirani, and Claudio Turchetti. Advances in 
% Lee-Schetzen method for Volterra filter identification. Multidimensional 
% Systems and Signal Processing, 16(3):265-284, 2005.

% function [k35]=k35f(k3,A)
%
% k35 is the third order component of the Wiener series corresponding to 
% the fifth order Wiener kernel k5.
% A it's the power of input sequence.
% Refer to the documentation and references provided

function k35=k35f(k5,A)

R5=size(k5,1);
diag=zeros(R5,1);
k35=zeros(R5,R5,R5);
for sgm1=1:R5
    for sgm2=1:R5;
        for sgm3=1:R5
            for tau1=1:R5,diag(tau1)=k5(tau1,tau1,sgm1,sgm2,sgm3);end
            k35(sgm1,sgm2,sgm3)=sum(diag);
        end
    end
end

k35=-10*A*k35;
