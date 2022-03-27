k= menu ('Image Tool Box' , 'Image Conversion','Image Algebra','Point Operations','Neighborhood Operations','Histogram','Image Translation','Image Rotation','Frequency Domain','Exit');
while k ~= 9
    switch k
        case 1
            i= menu ('Image Conversion' , 'RGB To Gray','RGB TO BINARY','Gray To Binary','Index To RGB','Index To Gray','Back');

            while i~=6
                switch i
                    case 1


                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);

                        rgebtograynew(oldimge,1);
                        figure,imshow(oldimge);

                    case 2
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        threshould= str2double(getfield((inputdlg('Please enter the threshould value','Input Dialog')),{1}));                       
                        figure,imshow(RGBtoBINARY(oldimge,2,threshould));

                    case 3
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        threshould= str2double(getfield((inputdlg('Please enter the threshould value','Input Dialog')),{1}));
                        figure,imshow(GRAYtoBINARY(oldimge,threshould));

                    case 4
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        [oldimge map] = imread([pathname filename]);
                        newimge = Ind2RGB(oldimge,map);

                    case 5
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        [oldimge map] = imread([pathname filename]);

                        newimge = Ind2Gray(oldimge,map);


                end
                i= menu ('Image Conversion' , 'RGB To Gray','RGB TO BINARY','Gray To Binary','Index To RGB','Index To Gray','Back');
            end



        case 2

            i= menu ('Image Algebra' , 'Images Addition','Images Subtraction','Images Multiplication','Back');

            while i~=4
                switch i
                    case 1
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select Image 1');

                        oldimg1 = imread([pathname filename]);
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select Image 2');

                        oldimg2 = imread([pathname filename]);
                        newimg = Add(oldimg1,oldimg2);

                    case 2
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select Image 1');

                        oldimg1 = imread([pathname filename]);
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select Image 2');

                        oldimg2 = imread([pathname filename]);
                        newimg = Subtract(oldimg1,oldimg2);

                    case 3
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select Image 1');

                        oldimg1 = imread([pathname filename]);
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select Image 2');

                        oldimg2 = imread([pathname filename]);
                        newimg = Multiplication(oldimg1,oldimg2);




                end
                i= menu ('Image Algebra' , 'Images Addition','Images Subtraction','Images Multiplication','Back');
            end




        case 3

            i= menu ('Point Operations' , 'Brightness','Contrast','Gamma Correction','Negative','Back');

            while i~=5
                switch i
                    case 1
                        [ filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimg = imread([pathname filename]);




                        offset = str2double(getfield((inputdlg('Please enter the offset value','Input Dialog')),{1}));
                        figure,imshow(increaseBrightness(oldimg,offset));

                    case 2
                        [ filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimg = imread([pathname filename]);
                        NewMin= str2double(getfield((inputdlg('Please enter the NewMin value','Input Dialog')),{1}));
                        NewMax= str2double(getfield((inputdlg('Please enter the NewMax value','Input Dialog')),{1}));
                        newimg = Contrast(oldimg,NewMin,NewMax);

                    case 3
                        [ filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimg = imread([pathname filename]);
                        gamma= str2double(getfield((inputdlg('Please enter the Gamma value','Input Dialog')),{1}));
                        figure,imshow(NewGamma(oldimg,gamma));


                    case 4
                        [ filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimg = imread([pathname filename]);
                        figure,nigative(oldimg);





                end
                i= menu ('Point Operations' , 'Brightness','Contrast','Gamma Correction','Negative','Back');
            end




        case 4

            i= menu ('Neighborhood Operations' , 'Bluring','Detection','Sharpening','Back');

            while i~=4

                switch i

                    case 1

                        j= menu ('Bluring Filters' , 'Bluring Mean Filter','Bluring Weight Filter','Bluring Dynamic Filter','Back');

                        while j~=4

                            switch j

                                case 1
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                   maskW= str2double(getfield((inputdlg('Please enter the Mask Width','Input Dialog')),{1}));
                                   figure,imshow(imfilter(oldimg,ones(maskW,maskW)/9));

                                case 2
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    maskW= str2double(getfield((inputdlg('Please enter the Mask Width','Input Dialog')),{1}));
                                    figure,imshow(imfilter(oldimg,ones(maskW,maskW)/16));
                                case 3
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    mask= str2double(getfield((inputdlg('Please enter the Mask','Input Dialog')),{1}));
                                    newimg = DynamicFilter(oldimg,mask);

                            end
                            j= menu ('Bluring Filters' , 'Bluring Mean Filter','Bluring Weight Filter','Bluring Dynamic Filter','Back');
                        end


                    case 2

                        j= menu ('Detection Filters' , 'Point Detection','Vertical Detection','Horizontal Detection','Diagnoal left Detection','Diagonal right Detection','Back');

                        while j~=6

                            switch j

                                case 1
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    mask_3=[[-1,-1,-1],[-1,8,-1],[-1,-1,-1]];
                                    point=imfilter(oldimg,mask_3);
                                    figure,imshow(point);
                                case 2
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    mask_2=[[-1,0,1],[-2,0,2],[-1,0,1]];
                                    v=imfilter(oldimg,mask_2);
                                    figure,imshow(v);

                                case 3
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    mask=[[-1,-2,-1],[0,0,0,],[1,2,1]];
                                    h=imfilter(oldimg,mask);
                                    figure,imshow(h);

                                case 4
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    mask_5=[[0,-1,-2],[1,0,-1],[2,1,0]];
                                    d_l=imfilter(oldimg,mask_5);
                                    figure,imshow(d_l);

                                case 5
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    mask_4=[[2,1,0],[1,0,-1],[0,-1,-2]];
                                    d_r=imfilter(oldimg,mask_4);
                                    figure,imshow(d_r);

                            end
                            j= menu ('Detection Filters' , 'Point Detection','Vertical Detection','Horizontal Detection','Diagnoal left Detection','Diagonal right Detection','Back');
                        end

                    case 3


                        j= menu ('Sharpening Filters' , 'Point Sharpening','Vertical Sharpening','Horizontal Sharpening','Diagnoal left Sharpening','Diagonal right Sharpening','Back');

                        while j~=6

                            switch j

                                case 1
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    sharp_3=[[0,-1,0],[-1,5,-1],[0,-1,0]];
                                    s_p=imfilter(oldimg,sharp_3);
                                    figure,imshow(s_p);
                                case 2
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    sharp_1=[[0,1,0],[0,1,0],[0,-1,0]];
                                    s_v=imfilter(oldimg,sharp_1);
                                    figure,imshow(s_v);

                                case 3
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    sharp_2=[[0,0,0],[1,1,-1],[0,0,0]];
                                    s_h=imfilter(oldimg,sharp_2);
                                    figure,imshow(s_h);
                                    
                                case 4
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    sharp_4=[[1,0,0],[1,1,-1],[0,0,0]];
                                    s_dl=imfilter(oldimg,sharp_4);
                                    figure,imshow(s_dl);

                                case 5
                                    [ filename, pathname] = uigetfile( ...
                                        {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                                        '*.*',  'All Files (*.*)'}, ...
                                        'Select an Image');

                                    oldimg = imread([pathname filename]);
                                    sharp_5=[[0,0,1],[0,1,0],[-1,0,0]];
                                    s_dr=imfilter(oldimg,sharp_5);
                                    figure,imshow(s_dr);

                            end
                            j= menu ('Detection Filters' , 'Point Sharpening','Vertical Sharpening','Horizontal Sharpening','Diagnoal left Sharpening','Diagonal right Sharpening','Back');
                        end




                end
                i= menu ('Neighborhood Operations' , 'Bluring','Detection','Sharpening','Back');
            end



        case 5

            i= menu ('Histogram' , 'Image Histogram','Histogram Equalization','Back');

            while i~=3
                switch i
                    case 1
                        [ filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimg = imread([pathname filename]);
                        figure,histogram(oldimg);

                    case 2
                        [ filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimg = imread([pathname filename]);
                        histeq(oldimg);


                end
                i= menu ('Histogram' , 'Image Histogram','Histogram Equalization','Back');
            end

        case 6
            [ filename, pathname] = uigetfile( ...
                {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                '*.*',  'All Files (*.*)'}, ...
                'Select an Image');

            oldimg = imread([pathname filename]);
            TransX= str2double(getfield((inputdlg('Please enter the TransX value','Input Dialog')),{1}));
            TransY= str2double(getfield((inputdlg('Please enter the TransY value','Input Dialog')),{1}));
            newimg = Translation(oldimg,TransX,TransY);


        case 7
            [ filename, pathname] = uigetfile( ...
                {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                '*.*',  'All Files (*.*)'}, ...
                'Select an Image');

            oldimg = imread([pathname filename]);
            angle= str2double(getfield((inputdlg('Please enter the Rotation Angle value','Input Dialog')),{1}));

            newimg = Rotation(oldimg,angle);

        case 8
            i= menu ('Frequency Domain' , 'Ideal Lowpass Filter','Ideal Highpass Filter','Butterworth Lowpass Filter','Butterworth Highpass Filter','Gaussian Lowpass Filter','Gaussian Highpass Filte','Back');

            while i~=7
                switch i
                    case 1


                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        d= str2double(getfield((inputdlg('Please enter the diastance value','Input Dialog')),{1}));

                        newimge = FourierIdealLowPassFilter(oldimge,d);


                    case 2
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        d= str2double(getfield((inputdlg('Please enter the diastance value','Input Dialog')),{1}));

                        newimge = FourierIdealHighPassFilter(oldimge,d);

                    case 3

                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        d= str2double(getfield((inputdlg('Please enter the diastance value','Input Dialog')),{1}));
                        n= str2double(getfield((inputdlg('Please enter the order of filter ','Input Dialog')),{1}));
                        newimge = FourierButterworthLowpassFilter(oldimge,d,n);


                    case 4


                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        d= str2double(getfield((inputdlg('Please enter the diastance value','Input Dialog')),{1}));
                        n= str2double(getfield((inputdlg('Please enter the order of filter ','Input Dialog')),{1}));
                        newimge = FourierButterworthHighpassFilter(oldimge,d,n);


                    case 5

                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        d= str2double(getfield((inputdlg('Please enter the diastance value','Input Dialog')),{1}));

                        newimge = FourierGaussianLowpassFilter(oldimge,d);


                    case 6
                        [filename, pathname] = uigetfile( ...
                            {'*.tif;*.png;*.jpeg;*.jpg','Image Files (*.tif,*.png,*.jpeg,*.jpg)';
                            '*.*',  'All Files (*.*)'}, ...
                            'Select an Image');

                        oldimge = imread([pathname filename]);
                        d= str2double(getfield((inputdlg('Please enter the diastance value','Input Dialog')),{1}));

                        newimge = FourierGaussianHighpassFilter(oldimge,d);



                end

                i= menu ('Frequency Domain' , 'Ideal Lowpass Filter','Ideal Highpass Filter','Butterworth Lowpass Filter','Butterworth Highpass Filter','Gaussian Lowpass Filter','Gaussian Highpass Filte','Back');


            end
    end
    
            k= menu ('Image Tool Box' , 'Image Conversion','Image Algebra','Point Operations','Neighborhood Operations','Histogram','Image Translation','Image Rotation','Frequency Domain','Exit');

    end