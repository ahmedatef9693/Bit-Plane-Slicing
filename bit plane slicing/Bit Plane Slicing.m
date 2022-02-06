clc;
clear all;
close all;

Mask = ones(8,1);
Image = imread('BS2.png');
greyimage = rgb2gray(Image);
 
[Rows,Cols] = size(greyimage);

BitPlane1 = 0;
BitPlane2 = 0;
BitPlane3 = 0;
BitPlane4 = 0;
BitPlane5 = 0;
BitPlane6 = 0;
BitPlane7 = 0;
BitPlane8 = 0;


%initializing Mask
for i=1:7
    
    Mask(i+1) = bitsll( Mask(i+1),i);
    
end


for CurrentBitPlane=1 :8
    Result = uint8(zeros(Rows,Cols));
    Result = bitand(greyimage,Mask(CurrentBitPlane));
    figure,imshow(Result);
    
    for rows=1:Rows
        for cols=1:Cols
            if CurrentBitPlane == 1
                if Result(rows,cols)== Mask(CurrentBitPlane)
                    BitPlane1 = BitPlane1 +1;
                end
            end       
                
            if CurrentBitPlane == 2
                if Result(rows,cols) == Mask(CurrentBitPlane)
                   BitPlane2 = BitPlane2 +1;
                end
            end
            if CurrentBitPlane == 3
                if Result(rows,cols)== Mask(CurrentBitPlane)
                    BitPlane3 = BitPlane3 +1;
                end
            end
            if CurrentBitPlane ==4
                if Result(rows,cols)== Mask(CurrentBitPlane)
                    BitPlane4 = BitPlane4+1;            
                end
            end
            if CurrentBitPlane == 5
                if Result(rows,cols)== Mask(CurrentBitPlane)
                    BitPlane5 = BitPlane5+1;   
                end
            end
            if CurrentBitPlane ==6
                if Result(rows,cols)== Mask(CurrentBitPlane)
                    BitPlane6 = BitPlane6 +1; 
                end
            end
            if CurrentBitPlane ==7
                if Result(rows,cols)== Mask(CurrentBitPlane)
                    BitPlane7 = BitPlane7 +1;
                end
            end
                
            if CurrentBitPlane ==8
                if Result(rows,cols)== Mask(CurrentBitPlane)
                    BitPlane8 = BitPlane8 +1; 
                end
            end
                
        end
    end
    
end
           
               
                       
        
    


TotalCount = 0;
TotalCount = BitPlane1 + BitPlane2 + BitPlane3 + BitPlane4 + BitPlane5 + BitPlane6 +BitPlane7 + BitPlane8;

if BitPlane1 < (1/10)*TotalCount
    figure,disp('BitPlane 1 Is Useless');
end
if BitPlane2 <(1/10)*TotalCount
    figure,disp('BitPlane 2 Is Useless');
end
if BitPlane3 <(1/10)*TotalCount
    figure,disp('BitPlane 3 Is Useless');
end
if BitPlane4 <(1/10)*TotalCount
    figure,disp('BitPlane 4 Is Useless');
end
if BitPlane5 <(1/10)*TotalCount
    figure,disp('BitPlane 5 Is Useless');
end
if BitPlane6 < (1/10)*TotalCount
    figure,disp('BitPlane 6 Is Useless');
end
if BitPlane7 < (1/10)*TotalCount
    figure,disp('BitPlane 7 Is Useless');
end
if BitPlane8 < (1/10)*TotalCount
    figure,disp('BitPlane 8 Is Useless');
end
    
    
    
    