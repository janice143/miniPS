
function varargout = mini_photoshop(varargin)
% MINI_PHOTOSHOP MATLAB code for mini_photoshop.fig
%      MINI_PHOTOSHOP, by itself, creates a new MINI_PHOTOSHOP or raises the existing
%      singleton*.
%
%      H = MINI_PHOTOSHOP returns the handle to a new MINI_PHOTOSHOP or the handle to
%      the existing singleton*.
%
%      MINI_PHOTOSHOP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MINI_PHOTOSHOP.M with the given input arguments.
%
%      MINI_PHOTOSHOP('Property','Value',...) creates a new MINI_PHOTOSHOP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before mini_photoshop_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to mini_photoshop_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mini_photoshop

% Last Modified by GUIDE v2.5 15-Jun-2021 12:11:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mini_photoshop_OpeningFcn, ...
                   'gui_OutputFcn',  @mini_photoshop_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end


% End initialization code - DO NOT EDIT


% --- Executes just before mini_photoshop is made visible.
function mini_photoshop_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to mini_photoshop (see VARARGIN)

% Choose default command line output for mini_photoshop
handles.output = hObject;
set(handles.brightSlider,'Visible','Off');
set(handles.contrastSlider,'Visible','Off');
set(handles.hueSlider,'Visible','Off');
set(handles.downBorder,'Visible','On');

h = handles.figure1; %返回其句柄
newIcon = javax.swing.ImageIcon('E:\codey\my_MATLAB_code\冈萨雷斯数字图像处理源代码\mini photoshop\miniPS_icon.png')
figFrame = get(h,'JavaFrame'); %取得Figure的JavaFrame。
figFrame.setFigureIcon(newIcon); %修改图标

% Update handles structure
guidata(hObject, handles);


% UIWAIT makes mini_photoshop wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mini_photoshop_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% 菜单栏功能实现
% --------------------------------------------------------------------
function file_Callback(hObject, eventdata, handles)
% hObject    handle to file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --------------------------------------------------------------------
function edit_Callback(hObject, eventdata, handles)
% hObject    handle to edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function image_Callback(hObject, eventdata, handles)
% hObject    handle to image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.brightSlider,'Visible','Off');
set(handles.contrastSlider,'Visible','Off');
set(handles.hueSlider,'Visible','Off');
set(handles.downBorder,'Visible','On');

% --------------------------------------------------------------------
function filter_Callback(hObject, eventdata, handles)
% hObject    handle to filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.brightSlider,'Visible','Off');
set(handles.contrastSlider,'Visible','Off');
set(handles.hueSlider,'Visible','Off');
set(handles.downBorder,'Visible','On');

% --------------------------------------------------------------------
function help_Callback(hObject, eventdata, handles)
% hObject    handle to help (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.brightSlider,'Visible','Off');
set(handles.contrastSlider,'Visible','Off');
set(handles.hueSlider,'Visible','Off');
set(handles.downBorder,'Visible','On');

% --------------------------------------------------------------------
function adjust_Callback(hObject, eventdata, handles)
% hObject    handle to adjust (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function transfer_Callback(hObject, eventdata, handles)
% hObject    handle to transfer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.brightSlider,'Visible','Off');
set(handles.contrastSlider,'Visible','Off');
set(handles.hueSlider,'Visible','Off');
set(handles.downBorder,'Visible','On');

% --------------------------------------------------------------------
function open_Callback(hObject, eventdata, handles)
% hObject    handle to open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% 打开一张图片
[FileName,PathName,FilterIndex]=uigetfile({'*.*';'*.jpg';'*.bmp';'*.png'},'请选择文件');
data=imread([PathName,FileName]);
set(handles.save,'UserData',[PathName,FileName]);%为了存储图片的时候，可以原路径，原文件名存储


[height,width,dim] = size(data);
% disp(width);
% disp(height);
set(hObject,'UserData',data); %userdata取值为矩阵，用来存储比较重要的数据，起到数据传递的作用
set(handles.scale,'UserData',data);%缩放图片保存后，要改变原图的data，宽和高，所以在打开图像之前保存好data、宽和高，防止data、宽高更新
set(handles.rotate,'UserData',data);%旋转图片保存后，要改变原图的data，所以在打开图像之前保存好data，防止data更新
set(handles.bright,'UserData',data);%调节图片亮度保存后，要改变原图的data，所以在打开图像之前保存好data，防止data更新
set(handles.contrast,'UserData',data);%调节图片对比度保存后，要改变原图的data，所以在打开图像之前保存好data，防止data更新
set(handles.hue,'UserData',data);%调节图片饱和度保存后，要改变原图的data，所以在打开图像之前保存好data，防止data更新
set(handles.black_and_white,'UserData',data);
set(handles.Inverse,'UserData',data);
set(handles.surfaceBlur,'UserData',data);
set(handles.motionBlur,'UserData',data);
set(handles.gaussBlur,'UserData',data);
set(handles.usmSharp,'UserData',data);
set(handles.reset,'UserData',data);

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
newPos=floor([1,1,resetWidth-1,resetHeight-1]);
set(handles.pickBtn,'UserData',newPos);


imagesc([-width/2:width/2],[-height/2,height/2],data);
set(gca,'XLim',[-width/2,width/2],'XTick',[]);
set(gca,'YLim',[-height/2,height/2],'YTick',[]);
% set(gca,'XLim',[-width/2,width/2]);
% set(gca,'YLim',[-height/2,height/2]);
axis equal;



% --------------------------------------------------------------------
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
newPos=floor([1,1,resetWidth-1,resetHeight-1]);
set(handles.pickBtn,'UserData',newPos);

imagesc([-resetWidth/2:resetWidth/2],[-resetHeight/2,resetHeight/2],resetData);% 难点在于把缩放的图片居中
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',resetData);%更新data,用于存储新图像


% --------------------------------------------------------------------
function prevStep_Callback(hObject, eventdata, handles)
% hObject    handle to prevStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.prevStep,'UserData');

[oriHeight,oriWidth,oriDim] = size(oriData);

prevStepData=oriData;
[prevStepHeight,prevStepWidth,prevStepDim] = size(prevStepData);
imagesc([-prevStepWidth/2:prevStepWidth/2],[-prevStepHeight/2,prevStepHeight/2],prevStepData);% 难点在于把缩放的图片居中

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',prevStepData);%更新data,用于存储新图像

% --------------------------------------------------------------------
function backStep_Callback(hObject, eventdata, handles)
% hObject    handle to backStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.backStep,'UserData');

[oriHeight,oriWidth,oriDim] = size(oriData);

backData=oriData;
[backHeight,backWidth,backDim] = size(backData);
imagesc([-backWidth/2:backWidth/2],[-backHeight/2,backHeight/2],backData);% 难点在于把缩放的图片居中

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',backData);%更新data,用于存储新图像


% --------------------------------------------------------------------
function close_Callback(hObject, eventdata, handles)
% hObject    handle to close (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cla(handles.axes);



% --------------------------------------------------------------------
function save_Callback(hObject, eventdata, handles)
% hObject    handle to save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data=get(handles.open,'UserData');
saveOriPa=get(handles.save,'UserData');%save original path 原路径，原命名 保存
imwrite(data,saveOriPa);

% --------------------------------------------------------------------
function save_as_Callback(hObject, eventdata, handles)
% hObject    handle to save_as (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data=get(handles.open,'UserData');
[FileName,PathName,FilterIndex]=uiputfile({'*.jpg';'*.bmp';'*.png';},'保存文件','new_figure');
disp(FileName);
disp(PathName);
imwrite(data,[PathName,FileName]);


% --------------------------------------------------------------------
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(gcf);


% --------------------------------------------------------------------
function scale_Callback(hObject, eventdata, handles)
% hObject    handle to scale (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像


[oriHeight,oriWidth,oriDim] = size(oriData);

scaleFactor=inputdlg('请输入缩放系数（大于0）','Input',[1 40]);
scaleFactor=str2num(scaleFactor{1});
scaleData=imresize(oriData,scaleFactor);% matlab自带的图像缩放函数

[scaleHeight,scaleWidth,scaleDim] = size(scaleData);
disp(scaleHeight);
imagesc([-scaleWidth/2:scaleWidth/2],[-scaleHeight/2,scaleHeight/2],scaleData);% 难点在于把缩放的图片居中

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',scaleData);%更新data,用于存储新图像
set(handles.backStep,'UserData',scaleData);%更新data,用于存储新图像



% --------------------------------------------------------------------
function rotate_Callback(hObject, eventdata, handles)
% hObject    handle to rotate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像
[oriHeight,oriWidth,oriDim] = size(oriData);

rotateFactor=inputdlg('请输入旋转角度θ（-180°到180°）','Theta Value',[1 40]);
rotateFactor=str2num(rotateFactor{1});
rotateData=imrotate(oriData,rotateFactor);% matlab自带的图像旋转函数
[rotateHeight,rotateWidth,oriDim] = size(rotateData);

imagesc([-rotateWidth/2:rotateWidth/2],[-rotateHeight/2,rotateHeight/2],rotateData);% 难点在于把缩放的图片居中

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',rotateData);%更新data,用于存储新图像
set(handles.backStep,'UserData',rotateData);%更新data,用于存储新图像



% --------------------------------------------------------------------
function flip_Callback(hObject, eventdata, handles)
% hObject    handle to flip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function about_Callback(hObject, eventdata, handles)
% hObject    handle to about (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function doc_Callback(hObject, eventdata, handles)
% hObject    handle to doc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
url = 'https://docs.qq.com/doc/DWEhyRE1BQXlMZ2l1';
web(url,'-browser');

% --------------------------------------------------------------------
function blur_Callback(hObject, eventdata, handles)
% hObject    handle to blur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --------------------------------------------------------------------
function sharp_Callback(hObject, eventdata, handles)
% hObject    handle to sharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_4_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function bright_Callback(hObject, eventdata, handles)
% hObject    handle to bright (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.brightSlider,'Visible','On');
set(handles.contrastSlider,'Visible','Off');
set(handles.hueSlider,'Visible','Off');
set(handles.downBorder,'Visible','Off');


% --------------------------------------------------------------------
function contrast_Callback(hObject, eventdata, handles)
% hObject    handle to contrast (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.contrastSlider,'Visible','On');
set(handles.brightSlider,'Visible','Off');
set(handles.hueSlider,'Visible','Off');
set(handles.downBorder,'Visible','Off');

% --------------------------------------------------------------------
function hue_Callback(hObject, eventdata, handles)
% hObject    handle to hue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.hueSlider,'Visible','On');
set(handles.brightSlider,'Visible','Off');
set(handles.contrastSlider,'Visible','Off');
set(handles.downBorder,'Visible','Off');

% --------------------------------------------------------------------
function black_and_white_Callback(hObject, eventdata, handles)
% hObject    handle to black_and_white (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像

[oriHeight,oriWidth,oriDim] = size(oriData);
grayData = rgb2gray(oriData);     %颜色空间转换
[grayHeight,grayWidth,grayDim] = size(grayData);

imagesc([-grayWidth/2:grayWidth/2],[-grayHeight/2,grayHeight/2],grayData);% 难点在于把缩放的图片居中
colormap(gray);
resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',grayData);%更新data,用于存储新图像
set(handles.backStep,'UserData',grayData);%更新data,用于存储新图像


% --------------------------------------------------------------------
function Inverse_Callback(hObject, eventdata, handles)
% hObject    handle to Inverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像
[oriHeight,oriWidth,oriDim] = size(oriData)

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData)

newPos=get(handles.pickBtn,'UserData')
newPos=floor(newPos);


if isempty(newPos)
    newPos=floor([1,1,resetWidth-1,resetHeight-1]);
end
g=imcrop(oriData,newPos);
imgn=g;
maxL=max(max(g))
imgn(:,:,1)=maxL(:,:,1)-g(:,:,1);
imgn(:,:,2)=maxL(:,:,2)-g(:,:,2);
imgn(:,:,3)=maxL(:,:,3)-g(:,:,3);
oriData(newPos(2):newPos(2)+newPos(4),newPos(1):newPos(1)+newPos(3),1:oriDim)=imgn(:,:,1:oriDim); 
inverseData=oriData;

[inverseHeight,inverseWidth,inverseDim] = size(inverseData);
imagesc([-inverseWidth/2:inverseWidth/2],[-inverseHeight/2,inverseHeight/2],inverseData);% 难点在于把缩放的图片居中

set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',inverseData);%更新data,用于存储新图像
set(handles.backStep,'UserData',inverseData);%更新data,用于存储新图像


% --------------------------------------------------------------------
function mosiac_Callback(hObject, eventdata, handles)
% hObject    handle to mosiac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像
[oriHeight,oriWidth,oriDim] = size(oriData);

mosiacFactor=inputdlg('请输入单元格大小（像素）','Input',[1 40]);
mosiacFactor=str2num(mosiacFactor{1});

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);

newPos=get(handles.pickBtn,'UserData');
newPos=floor(newPos)
if isempty(newPos)
    newPos=floor([1,1,resetWidth-1,resetHeight-1])
end
g=imcrop(oriData,newPos);
[h,w,dim] = size(g)
imgn = g;
%Set mosaic area n*n pixel block size
nh = floor(h/mosiacFactor)*mosiacFactor;%Resize images that are not necessarily integer multiples of n to integer multiples
nw = floor(w/mosiacFactor)*mosiacFactor;
%Loop processing on three channels
for t = 1:3
    for j = 1:mosiacFactor:nh
        for i = 1:mosiacFactor:nw
            imgn(j:j+mosiacFactor-1, i:i+mosiacFactor-1, t) =mean(mean(g(j:j+mosiacFactor-1, i:i+mosiacFactor-1, t)));%Averaging the column
        end
        imgn(j:j+mosiacFactor-1,nw:w , t ) = mean(mean(g(j:j+mosiacFactor-1,nw:w , t)));%Process the last column
    end
    for i = 1:mosiacFactor:nw
        imgn(nh:h, i:i+mosiacFactor-1, t) = mean(mean(g(nh:h, i:i+mosiacFactor-1, t)));%Process the last line
    end
    imgn(nh:h, nw:w, t) = mean(mean(g(nh:h, nw:w , t)));%Handle the last corner
end

oriData(newPos(2):newPos(2)+newPos(4),newPos(1):newPos(1)+newPos(3),1:3)=imgn(:,:,1:3); 
mosiacData=oriData;
[mosiacHeight,mosiacWidth,mosiacDim] = size(mosiacData);

imagesc([-mosiacWidth/2:mosiacWidth/2],[-mosiacHeight/2,mosiacHeight/2],mosiacData);% 难点在于把缩放的图片居中

set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;
set(handles.open,'UserData',mosiacData);%更新data,用于存储新图像
set(handles.backStep,'UserData',mosiacData);%更新data,用于存储新图像


% --- Executes during object creation, after setting all properties.
function axes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes


% --- Executes on brightSlider movement.
function brightSlider_Callback(hObject, eventdata, handles)
% hObject    handle to brightSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.reset,'UserData');

prevData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',prevData);%更新data,用于存储新图像

[oriHeight,oriWidth,oriDim] = size(oriData);
hsvData = rgb2hsv(oriData);     %颜色空间转换
H = hsvData(:,:,1); % 色调
S = hsvData(:,:,2); % 饱和度
V = hsvData(:,:,3); % 亮度

brightFactor=get(hObject,'Value')

hsvData(:,:,3) =brightFactor* hsvData(:,:,3);   %1.5位需要增强的倍数，可以根据图片情况动态调整

brightData = hsv2rgb(hsvData); %转为RGB，进行显示
[brightHeight,brightWidth,brightDim] = size(brightData);

imagesc([-brightWidth/2:brightWidth/2],[-brightHeight/2,brightHeight/2],brightData);% 难点在于把缩放的图片居中

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;
set(handles.open,'UserData',brightData);%更新data,用于存储新图像
set(handles.backStep,'UserData',brightData);%更新data,用于存储新图像

% Hints: get(hObject,'Value') returns position of brightSlider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of brightSlider


% --- Executes during object creation, after setting all properties.
function brightSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to brightSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: brightSlider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --------------------------------------------------------------------
function lrFlip_Callback(hObject, eventdata, handles)
% hObject    handle to lrFlip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像
[oriHeight,oriWidth,oriDim] = size(oriData);

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);

newPos=get(handles.pickBtn,'UserData');
newPos=floor(newPos);
if isempty(newPos)
    newPos=floor([1,1,resetWidth-1,resetHeight-1]);
end
g=imcrop(oriData,newPos);

imgn=fliplr(g);% matlab自带的图像旋转函数

oriData(newPos(2):newPos(2)+newPos(4),newPos(1):newPos(1)+newPos(3),1:3)=imgn(:,:,1:3); 
fliplrData=oriData;
[fliplrHeight,fliplrWidth,oriDim] = size(fliplrData);

imagesc([-fliplrWidth/2:fliplrWidth/2],[-fliplrHeight/2,fliplrHeight/2],fliplrData);% 难点在于把缩放的图片居中
resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',fliplrData);%更新data,用于存储新图像
set(handles.backStep,'UserData',fliplrData);%更新data,用于存储新图像

% --------------------------------------------------------------------
function udFlip_Callback(hObject, eventdata, handles)
% hObject    handle to udFlip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像
[oriHeight,oriWidth,oriDim] = size(oriData);

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);

newPos=get(handles.pickBtn,'UserData');
newPos=floor(newPos);
if isempty(newPos)
    newPos=floor([1,1,resetWidth-1,resetHeight-1]);
end
g=imcrop(oriData,newPos);

imgn=flipud(g);% matlab自带的图像旋转函数

oriData(newPos(2):newPos(2)+newPos(4),newPos(1):newPos(1)+newPos(3),1:3)=imgn(:,:,1:3); 
flipudData=oriData;

[flipudHeight,flipudWidth,oriDim] = size(flipudData);

imagesc([-flipudWidth/2:flipudWidth/2],[-flipudHeight/2,flipudHeight/2],flipudData);% 难点在于把缩放的图片居中

set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',flipudData);%更新data,用于存储新图像
set(handles.backStep,'UserData',flipudData);%更新data,用于存储新图像


% --------------------------------------------------------------------
function rotate180_Callback(hObject, eventdata, handles)
% hObject    handle to rotate180 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像
[oriHeight,oriWidth,oriDim] = size(oriData);

rotateFactor=180;
rotateData=imrotate(oriData,rotateFactor);% matlab自带的图像旋转函数
[rotateHeight,rotateWidth,oriDim] = size(rotateData);


imagesc([-rotateWidth/2:rotateWidth/2],[-rotateHeight/2,rotateHeight/2],rotateData);% 难点在于把缩放的图片居中

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',rotateData);%更新data,用于存储新图像
set(handles.backStep,'UserData',rotateData);%更新data,用于存储新图像


% --------------------------------------------------------------------
function rightRotate90_Callback(hObject, eventdata, handles)
% hObject    handle to rightRotate90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像
[oriHeight,oriWidth,oriDim] = size(oriData);

rotateFactor=-90;
rotateData=imrotate(oriData,rotateFactor);% matlab自带的图像旋转函数
[rotateHeight,rotateWidth,oriDim] = size(rotateData);


imagesc([-rotateWidth/2:rotateWidth/2],[-rotateHeight/2,rotateHeight/2],rotateData);% 难点在于把缩放的图片居中

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',rotateData);%更新data,用于存储新图像
set(handles.backStep,'UserData',rotateData);%更新data,用于存储新图像



% --------------------------------------------------------------------
function leftRotate90_Callback(hObject, eventdata, handles)
% hObject    handle to leftRotate90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像
[oriHeight,oriWidth,oriDim] = size(oriData);

rotateFactor=90;
rotateData=imrotate(oriData,rotateFactor);% matlab自带的图像旋转函数
[rotateHeight,rotateWidth,oriDim] = size(rotateData);

imagesc([-rotateWidth/2:rotateWidth/2],[-rotateHeight/2,rotateHeight/2],rotateData);% 难点在于把缩放的图片居中

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',rotateData);%更新data,用于存储新图像
set(handles.backStep,'UserData',rotateData);%更新data,用于存储新图像



% --- Executes on slider movement.
function contrastSlider_Callback(hObject, eventdata, handles)
% hObject    handle to contrastSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.reset,'UserData');

prevData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',prevData);%更新data,用于存储新图像
[oriHeight,oriWidth,oriDim] = size(oriData);

contrastFactor=get(hObject,'Value');



contrastData = imadjust(oriData,[],[],contrastFactor);
[contrastHeight,contrastWidth,contrastDim] = size(contrastData);

imagesc([-contrastWidth/2:contrastWidth/2],[-contrastHeight/2,contrastHeight/2],contrastData);% 难点在于把缩放的图片居中

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;
set(handles.open,'UserData',contrastData);%更新data,用于存储新图像
set(handles.backStep,'UserData',contrastData);%更新data,用于存储新图像



% --- Executes during object creation, after setting all properties.
function contrastSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to contrastSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function hueSlider_Callback(hObject, eventdata, handles)
% hObject    handle to hueSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.reset,'UserData');

prevData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',prevData);%更新data,用于存储新图像

[oriHeight,oriWidth,oriDim] = size(oriData);
hsvData = rgb2hsv(oriData);     %颜色空间转换
H = hsvData(:,:,1); % 色调
S = hsvData(:,:,2); % 饱和度
V = hsvData(:,:,3); % 亮度

hueFactor=get(hObject,'Value');
hsvData(:,:,2) =hueFactor* hsvData(:,:,2);   %1.5位需要增强的倍数，可以根据图片情况动态调整

hueData = hsv2rgb(hsvData); %转为RGB，进行显示
[hueHeight,hueWidth,hueDim] = size(hueData);

imagesc([-hueWidth/2:hueWidth/2],[-hueHeight/2,hueHeight/2],hueData);% 难点在于把缩放的图片居中

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.backStep,'UserData',hueData);%更新data,用于存储新图像
set(handles.open,'UserData',hueData);%更新data,用于存储新图像
set(handles.open,'UserData',hueData);%更新data,用于存储新图像
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function hueSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hueSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --------------------------------------------------------------------
function surfaceBlur_Callback(hObject, eventdata, handles)
% hObject    handle to surfaceBlur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像
[oriHeight,oriWidth,oriDim] = size(oriData);

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);

newPos=get(handles.pickBtn,'UserData');
newPos=floor(newPos);
if isempty(newPos)
    newPos=floor([1,1,resetWidth-1,resetHeight-1]);
end
g=imcrop(oriData,newPos);
[h,w,dim] = size(g);

sBlurRT= inputdlg({'请输入半径（像素）','请输入阈值（色阶）'},'Input',[1 40]);
sBlurR=str2num(sBlurRT{1});
sBlurT=str2num(sBlurRT{2});

imgn=Surface_Blur(g,sBlurR,sBlurT);

oriData(newPos(2):newPos(2)+newPos(4),newPos(1):newPos(1)+newPos(3),1:3)=imgn(:,:,1:3); 
sBlurData=oriData;

[sBlurHeight,sBlurWidth,sBlurDim] = size(sBlurData);
imagesc([-sBlurWidth/2:sBlurWidth/2],[-sBlurHeight/2,sBlurHeight/2],sBlurData);% 难点在于把缩放的图片居中

set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.backStep,'UserData',sBlurData);%更新data,用于存储新图像
set(handles.open,'UserData',sBlurData);%更新data,用于存储新图像


% --------------------------------------------------------------------
function motionBlur_Callback(hObject, eventdata, handles)
% hObject    handle to motionBlur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像
[oriHeight,oriWidth,oriDim] = size(oriData);

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);

newPos=get(handles.pickBtn,'UserData');
newPos=floor(newPos);
if isempty(newPos)
    newPos=floor([1,1,resetWidth-1,resetHeight-1]);
end
g=imcrop(oriData,newPos);
[h,w,dim] = size(g);

mBlurAD= inputdlg({'请输入角度（°）','请输入距离（像素）'},'Input',[1 40]);
mBlurA=str2num(mBlurAD{1});
mBlurD=str2num(mBlurAD{2});

H = fspecial('motion',mBlurD,mBlurA);
imgn = imfilter(g,H,'replicate');

oriData(newPos(2):newPos(2)+newPos(4),newPos(1):newPos(1)+newPos(3),1:3)=imgn(:,:,1:3); 
mBlurData=oriData;

[mBlurHeight,mBlurWidth,mBlurDim] = size(mBlurData);
imagesc([-mBlurWidth/2:mBlurWidth/2],[-mBlurHeight/2,mBlurHeight/2],mBlurData);% 难点在于把缩放的图片居中
resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.backStep,'UserData',mBlurData);%更新data,用于存储新图像
set(handles.open,'UserData',mBlurData);%更新data,用于存储新图像


% --------------------------------------------------------------------
function gaussBlur_Callback(hObject, eventdata, handles)
% hObject    handle to gaussBlur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像
[oriHeight,oriWidth,oriDim] = size(oriData);

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);

newPos=get(handles.pickBtn,'UserData');
newPos=floor(newPos);
if isempty(newPos)
    newPos=floor([1,1,resetWidth-1,resetHeight-1]);
end
g=imcrop(oriData,newPos);
[h,w,dim] = size(g);

mBlurH= inputdlg('请输入半径（像素）','Input',[1 40]);
mBlurH=str2num(mBlurH{1});
sigma=10;
H = fspecial('gaussian',mBlurH,sigma);
imgn  = imfilter(g,H,'replicate');

oriData(newPos(2):newPos(2)+newPos(4),newPos(1):newPos(1)+newPos(3),1:3)=imgn(:,:,1:3); 

gBlurData=oriData;

[gBlurHeight,gBlurWidth,gBlurDim] = size(gBlurData);
imagesc([-gBlurWidth/2:gBlurWidth/2],[-gBlurHeight/2,gBlurHeight/2],gBlurData);% 难点在于把缩放的图片居中

set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.backStep,'UserData',gBlurData);%更新data,用于存储新图像
set(handles.open,'UserData',gBlurData);%更新data,用于存储新图像


% --------------------------------------------------------------------
function usmSharp_Callback(hObject, eventdata, handles)
% hObject    handle to usmSharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像
[oriHeight,oriWidth,oriDim] = size(oriData);

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);

mBlurRAT= inputdlg({'请输入半径（像素）','请输入数量（0-2之间）','请输入阈值（0-1之间）'},'Input',[1 40]);
mBlurR=str2num(mBlurRAT{1});
mBlurA=str2num(mBlurRAT{2});
mBlurT=str2num(mBlurRAT{3});

newPos=get(handles.pickBtn,'UserData');
newPos=floor(newPos);
if isempty(newPos)
    newPos=floor([1,1,resetWidth-1,resetHeight-1])
end
g=imcrop(oriData,newPos);
[h,w,dim] = size(g);
imgn = imsharpen(g,'Radius',mBlurR,'Amount',mBlurA,'threshold',mBlurT);

oriData(newPos(2):newPos(2)+newPos(4),newPos(1):newPos(1)+newPos(3),1:3)=imgn(:,:,1:3); 
usmSharpData=oriData;
[usmSharpHeight,usmSharpWidth,usmSharpDim] = size(usmSharpData)

imagesc([-usmSharpWidth/2:usmSharpWidth/2],[-usmSharpHeight/2,usmSharpHeight/2],usmSharpData);% 难点在于把缩放的图片居中

set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;
set(handles.open,'UserData',usmSharpData);%更新data,用于存储新图像
set(handles.backStep,'UserData',usmSharpData);%更新data,用于存储新图像




% --- Executes on button press in cropBtn.
function cropBtn_Callback(hObject, eventdata, handles)
% hObject    handle to cropBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像
[oriHeight,oriWidth,oriDim] = size(oriData);

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);

pos=floor([-resetWidth/2+5,-resetHeight/2+5,resetWidth-10,resetHeight-10]);
t=imrect(gca,pos);

pause;
pos=getPosition(t);
pos(1)=resetWidth/2+pos(1);
pos(2)=resetHeight/2+pos(2);
newPos=floor(pos);
newPosBtn=newPos;
newPosBtn(1)=1;
newPosBtn(2)=1;

g=imcrop(oriData,newPos);
imgn=g;
cropData=imgn;

[cropHeight,cropWidth,cropDim] = size(cropData);
imagesc([-cropWidth/2:cropWidth/2],[-cropHeight/2,cropHeight/2],cropData);% 难点在于把缩放的图片居中

set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;
% 
% oriData(newPos(2):newPos(2)+newPos(4),newPos(1):newPos(1)+newPos(3),1:3)=cropData; 
set(handles.backStep,'UserData',cropData);%更新data,用于存储新图像
set(handles.open,'UserData',cropData);%更新data,用于存储新图像
set(handles.pickBtn,'UserData',newPosBtn);


% --- Executes on button press in pickBtn.
function pickBtn_Callback(hObject, eventdata, handles)
% hObject    handle to pickBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%更新data,用于存储新图像
[oriHeight,oriWidth,oriDim] = size(oriData);

t=imrect;
pos=getPosition(t);

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);

pos(1)=oriWidth/2+pos(1);
pos(2)=oriHeight/2+pos(2);
newPos=floor(pos);

set(handles.pickBtn,'UserData',newPos);


% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
