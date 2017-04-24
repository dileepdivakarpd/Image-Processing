function m=squareBlur(tdimage)
[e,f]=size(tdimage);
g=ceil(e/5);
b=tdimage(e/2-g:e/2+g,1:f);
m=imfilter(tdimage,fspecial('average',[41,41])); 
m((e/2)-g:(e/2)+g,1:f)=b(1:(2*g+1),1:f);