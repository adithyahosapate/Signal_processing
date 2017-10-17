## Copyright (C) 2017 Adithya Hosapate
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} STFT (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Adithya Hosapate <adithya@adithya-Satellite-L55-A>
## Created: 2017-10-17

function [STFT, f, t] = STFT(x, wlen, hop, nfft, fs)

% function: [STFT, f, t] = STFT(x, wlen, hop, nfft, fs)
% x - signal in the time domain
% wlen - length of the analysis Hamming window
% hop - hop size
% nfft - number of FFT points
% fs - sampling frequency, Hz
% STFT - STFT matrix (only unique points, time across columns, freq across rows)
% f - frequency vector, Hz
% t - time vector, s

% represent x as column-vector
x = x(:);

% length of the signal
xlen = length(x);

% form a periodic hamming window
win = hamming(wlen, 'periodic');

% STFT matrix estimation and preallocation
rown = ceil((1+nfft)/2);            % calculate the total number of rows
coln = 1+fix((xlen-wlen)/hop);      % calculate the total number of columns
STFT = zeros(rown, coln);           % form the STFT matrix

% initialize the signal time segment index
indx = 0;

% perform STFT
for col = 1:coln
    % windowing
    xw = x(indx+1:indx+wlen).*win;
    
    % FFT
    X = fft(xw, nfft);
    
    % update the STFT matrix
    STFT(:, col) = X(1:rown);
    
    % update the index
    indx = indx + hop;
end

% calculate the time and frequency vectors
t = (wlen/2:hop:wlen/2+(coln-1)*hop)/fs;
f = (0:rown-1)*fs/nfft;

end
