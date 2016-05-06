function str2img(str, font, color)
img = [];
for i = str
    img = [img, font{i}];
end
bgMask = ~img;
r = img*color(1);
r(bgMask) = 255;

g = img*color(2);
g(bgMask) = 255;

b = img*color(3);
b(bgMask) = 255;


img = uint8(cat(3, r, g, b));
imshow(img);
imwrite(img, [camelCase(str), '.png'], 'png');
end

function [str_out] = camelCase(str_in)
str_out = lower(str_in); %set input string to lower case
spaces = str_out ==' '; %find the index of spaces
first = [false spaces(1:end-1)]; %shift the index by 1 to the first letter of each word
letters = str_out >='a' & str_out <='z'; %logical index of the letters (no capital letters because of line 11)
non_letters = ~letters; %logical index of the non letters
str_out(first) = upper(str_out(first)); %capitalize the first letter of each word
str_out(non_letters) = ''; %remove non letters;
end