
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

h = handles.figure1; %��������
newIcon = javax.swing.ImageIcon('E:\codey\my_MATLAB_code\������˹����ͼ����Դ����\mini photoshop\miniPS_icon.png')
figFrame = get(h,'JavaFrame'); %ȡ��Figure��JavaFrame��
figFrame.setFigureIcon(newIcon); %�޸�ͼ��

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


% �˵�������ʵ��
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

% ��һ��ͼƬ
[FileName,PathName,FilterIndex]=uigetfile({'*.*';'*.jpg';'*.bmp';'*.png'},'��ѡ���ļ�');
data=imread([PathName,FileName]);
set(handles.save,'UserData',[PathName,FileName]);%Ϊ�˴洢ͼƬ��ʱ�򣬿���ԭ·����ԭ�ļ����洢


[height,width,dim] = size(data);
% disp(width);
% disp(height);
set(hObject,'UserData',data); %userdataȡֵΪ���������洢�Ƚ���Ҫ�����ݣ������ݴ��ݵ�����
set(handles.scale,'UserData',data);%����ͼƬ�����Ҫ�ı�ԭͼ��data����͸ߣ������ڴ�ͼ��֮ǰ�����data����͸ߣ���ֹdata����߸���
set(handles.rotate,'UserData',data);%��תͼƬ�����Ҫ�ı�ԭͼ��data�������ڴ�ͼ��֮ǰ�����data����ֹdata����
set(handles.bright,'UserData',data);%����ͼƬ���ȱ����Ҫ�ı�ԭͼ��data�������ڴ�ͼ��֮ǰ�����data����ֹdata����
set(handles.contrast,'UserData',data);%����ͼƬ�Աȶȱ����Ҫ�ı�ԭͼ��data�������ڴ�ͼ��֮ǰ�����data����ֹdata����
set(handles.hue,'UserData',data);%����ͼƬ���Ͷȱ����Ҫ�ı�ԭͼ��data�������ڴ�ͼ��֮ǰ�����data����ֹdata����
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

imagesc([-resetWidth/2:resetWidth/2],[-resetHeight/2,resetHeight/2],resetData);% �ѵ����ڰ����ŵ�ͼƬ����
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',resetData);%����data,���ڴ洢��ͼ��


% --------------------------------------------------------------------
function prevStep_Callback(hObject, eventdata, handles)
% hObject    handle to prevStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.prevStep,'UserData');

[oriHeight,oriWidth,oriDim] = size(oriData);

prevStepData=oriData;
[prevStepHeight,prevStepWidth,prevStepDim] = size(prevStepData);
imagesc([-prevStepWidth/2:prevStepWidth/2],[-prevStepHeight/2,prevStepHeight/2],prevStepData);% �ѵ����ڰ����ŵ�ͼƬ����

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',prevStepData);%����data,���ڴ洢��ͼ��

% --------------------------------------------------------------------
function backStep_Callback(hObject, eventdata, handles)
% hObject    handle to backStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.backStep,'UserData');

[oriHeight,oriWidth,oriDim] = size(oriData);

backData=oriData;
[backHeight,backWidth,backDim] = size(backData);
imagesc([-backWidth/2:backWidth/2],[-backHeight/2,backHeight/2],backData);% �ѵ����ڰ����ŵ�ͼƬ����

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',backData);%����data,���ڴ洢��ͼ��


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
saveOriPa=get(handles.save,'UserData');%save original path ԭ·����ԭ���� ����
imwrite(data,saveOriPa);

% --------------------------------------------------------------------
function save_as_Callback(hObject, eventdata, handles)
% hObject    handle to save_as (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data=get(handles.open,'UserData');
[FileName,PathName,FilterIndex]=uiputfile({'*.jpg';'*.bmp';'*.png';},'�����ļ�','new_figure');
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
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��


[oriHeight,oriWidth,oriDim] = size(oriData);

scaleFactor=inputdlg('����������ϵ��������0��','Input',[1 40]);
scaleFactor=str2num(scaleFactor{1});
scaleData=imresize(oriData,scaleFactor);% matlab�Դ���ͼ�����ź���

[scaleHeight,scaleWidth,scaleDim] = size(scaleData);
disp(scaleHeight);
imagesc([-scaleWidth/2:scaleWidth/2],[-scaleHeight/2,scaleHeight/2],scaleData);% �ѵ����ڰ����ŵ�ͼƬ����

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',scaleData);%����data,���ڴ洢��ͼ��
set(handles.backStep,'UserData',scaleData);%����data,���ڴ洢��ͼ��



% --------------------------------------------------------------------
function rotate_Callback(hObject, eventdata, handles)
% hObject    handle to rotate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��
[oriHeight,oriWidth,oriDim] = size(oriData);

rotateFactor=inputdlg('��������ת�ǶȦȣ�-180�㵽180�㣩','Theta Value',[1 40]);
rotateFactor=str2num(rotateFactor{1});
rotateData=imrotate(oriData,rotateFactor);% matlab�Դ���ͼ����ת����
[rotateHeight,rotateWidth,oriDim] = size(rotateData);

imagesc([-rotateWidth/2:rotateWidth/2],[-rotateHeight/2,rotateHeight/2],rotateData);% �ѵ����ڰ����ŵ�ͼƬ����

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',rotateData);%����data,���ڴ洢��ͼ��
set(handles.backStep,'UserData',rotateData);%����data,���ڴ洢��ͼ��



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
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��

[oriHeight,oriWidth,oriDim] = size(oriData);
grayData = rgb2gray(oriData);     %��ɫ�ռ�ת��
[grayHeight,grayWidth,grayDim] = size(grayData);

imagesc([-grayWidth/2:grayWidth/2],[-grayHeight/2,grayHeight/2],grayData);% �ѵ����ڰ����ŵ�ͼƬ����
colormap(gray);
resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',grayData);%����data,���ڴ洢��ͼ��
set(handles.backStep,'UserData',grayData);%����data,���ڴ洢��ͼ��


% --------------------------------------------------------------------
function Inverse_Callback(hObject, eventdata, handles)
% hObject    handle to Inverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��
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
imagesc([-inverseWidth/2:inverseWidth/2],[-inverseHeight/2,inverseHeight/2],inverseData);% �ѵ����ڰ����ŵ�ͼƬ����

set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',inverseData);%����data,���ڴ洢��ͼ��
set(handles.backStep,'UserData',inverseData);%����data,���ڴ洢��ͼ��


% --------------------------------------------------------------------
function mosiac_Callback(hObject, eventdata, handles)
% hObject    handle to mosiac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��
[oriHeight,oriWidth,oriDim] = size(oriData);

mosiacFactor=inputdlg('�����뵥Ԫ���С�����أ�','Input',[1 40]);
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

imagesc([-mosiacWidth/2:mosiacWidth/2],[-mosiacHeight/2,mosiacHeight/2],mosiacData);% �ѵ����ڰ����ŵ�ͼƬ����

set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;
set(handles.open,'UserData',mosiacData);%����data,���ڴ洢��ͼ��
set(handles.backStep,'UserData',mosiacData);%����data,���ڴ洢��ͼ��


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
set(handles.prevStep,'UserData',prevData);%����data,���ڴ洢��ͼ��

[oriHeight,oriWidth,oriDim] = size(oriData);
hsvData = rgb2hsv(oriData);     %��ɫ�ռ�ת��
H = hsvData(:,:,1); % ɫ��
S = hsvData(:,:,2); % ���Ͷ�
V = hsvData(:,:,3); % ����

brightFactor=get(hObject,'Value')

hsvData(:,:,3) =brightFactor* hsvData(:,:,3);   %1.5λ��Ҫ��ǿ�ı��������Ը���ͼƬ�����̬����

brightData = hsv2rgb(hsvData); %תΪRGB��������ʾ
[brightHeight,brightWidth,brightDim] = size(brightData);

imagesc([-brightWidth/2:brightWidth/2],[-brightHeight/2,brightHeight/2],brightData);% �ѵ����ڰ����ŵ�ͼƬ����

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;
set(handles.open,'UserData',brightData);%����data,���ڴ洢��ͼ��
set(handles.backStep,'UserData',brightData);%����data,���ڴ洢��ͼ��

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
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��
[oriHeight,oriWidth,oriDim] = size(oriData);

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);

newPos=get(handles.pickBtn,'UserData');
newPos=floor(newPos);
if isempty(newPos)
    newPos=floor([1,1,resetWidth-1,resetHeight-1]);
end
g=imcrop(oriData,newPos);

imgn=fliplr(g);% matlab�Դ���ͼ����ת����

oriData(newPos(2):newPos(2)+newPos(4),newPos(1):newPos(1)+newPos(3),1:3)=imgn(:,:,1:3); 
fliplrData=oriData;
[fliplrHeight,fliplrWidth,oriDim] = size(fliplrData);

imagesc([-fliplrWidth/2:fliplrWidth/2],[-fliplrHeight/2,fliplrHeight/2],fliplrData);% �ѵ����ڰ����ŵ�ͼƬ����
resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',fliplrData);%����data,���ڴ洢��ͼ��
set(handles.backStep,'UserData',fliplrData);%����data,���ڴ洢��ͼ��

% --------------------------------------------------------------------
function udFlip_Callback(hObject, eventdata, handles)
% hObject    handle to udFlip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��
[oriHeight,oriWidth,oriDim] = size(oriData);

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);

newPos=get(handles.pickBtn,'UserData');
newPos=floor(newPos);
if isempty(newPos)
    newPos=floor([1,1,resetWidth-1,resetHeight-1]);
end
g=imcrop(oriData,newPos);

imgn=flipud(g);% matlab�Դ���ͼ����ת����

oriData(newPos(2):newPos(2)+newPos(4),newPos(1):newPos(1)+newPos(3),1:3)=imgn(:,:,1:3); 
flipudData=oriData;

[flipudHeight,flipudWidth,oriDim] = size(flipudData);

imagesc([-flipudWidth/2:flipudWidth/2],[-flipudHeight/2,flipudHeight/2],flipudData);% �ѵ����ڰ����ŵ�ͼƬ����

set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',flipudData);%����data,���ڴ洢��ͼ��
set(handles.backStep,'UserData',flipudData);%����data,���ڴ洢��ͼ��


% --------------------------------------------------------------------
function rotate180_Callback(hObject, eventdata, handles)
% hObject    handle to rotate180 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��
[oriHeight,oriWidth,oriDim] = size(oriData);

rotateFactor=180;
rotateData=imrotate(oriData,rotateFactor);% matlab�Դ���ͼ����ת����
[rotateHeight,rotateWidth,oriDim] = size(rotateData);


imagesc([-rotateWidth/2:rotateWidth/2],[-rotateHeight/2,rotateHeight/2],rotateData);% �ѵ����ڰ����ŵ�ͼƬ����

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',rotateData);%����data,���ڴ洢��ͼ��
set(handles.backStep,'UserData',rotateData);%����data,���ڴ洢��ͼ��


% --------------------------------------------------------------------
function rightRotate90_Callback(hObject, eventdata, handles)
% hObject    handle to rightRotate90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��
[oriHeight,oriWidth,oriDim] = size(oriData);

rotateFactor=-90;
rotateData=imrotate(oriData,rotateFactor);% matlab�Դ���ͼ����ת����
[rotateHeight,rotateWidth,oriDim] = size(rotateData);


imagesc([-rotateWidth/2:rotateWidth/2],[-rotateHeight/2,rotateHeight/2],rotateData);% �ѵ����ڰ����ŵ�ͼƬ����

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',rotateData);%����data,���ڴ洢��ͼ��
set(handles.backStep,'UserData',rotateData);%����data,���ڴ洢��ͼ��



% --------------------------------------------------------------------
function leftRotate90_Callback(hObject, eventdata, handles)
% hObject    handle to leftRotate90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��
[oriHeight,oriWidth,oriDim] = size(oriData);

rotateFactor=90;
rotateData=imrotate(oriData,rotateFactor);% matlab�Դ���ͼ����ת����
[rotateHeight,rotateWidth,oriDim] = size(rotateData);

imagesc([-rotateWidth/2:rotateWidth/2],[-rotateHeight/2,rotateHeight/2],rotateData);% �ѵ����ڰ����ŵ�ͼƬ����

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.open,'UserData',rotateData);%����data,���ڴ洢��ͼ��
set(handles.backStep,'UserData',rotateData);%����data,���ڴ洢��ͼ��



% --- Executes on slider movement.
function contrastSlider_Callback(hObject, eventdata, handles)
% hObject    handle to contrastSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.reset,'UserData');

prevData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',prevData);%����data,���ڴ洢��ͼ��
[oriHeight,oriWidth,oriDim] = size(oriData);

contrastFactor=get(hObject,'Value');



contrastData = imadjust(oriData,[],[],contrastFactor);
[contrastHeight,contrastWidth,contrastDim] = size(contrastData);

imagesc([-contrastWidth/2:contrastWidth/2],[-contrastHeight/2,contrastHeight/2],contrastData);% �ѵ����ڰ����ŵ�ͼƬ����

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;
set(handles.open,'UserData',contrastData);%����data,���ڴ洢��ͼ��
set(handles.backStep,'UserData',contrastData);%����data,���ڴ洢��ͼ��



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
set(handles.prevStep,'UserData',prevData);%����data,���ڴ洢��ͼ��

[oriHeight,oriWidth,oriDim] = size(oriData);
hsvData = rgb2hsv(oriData);     %��ɫ�ռ�ת��
H = hsvData(:,:,1); % ɫ��
S = hsvData(:,:,2); % ���Ͷ�
V = hsvData(:,:,3); % ����

hueFactor=get(hObject,'Value');
hsvData(:,:,2) =hueFactor* hsvData(:,:,2);   %1.5λ��Ҫ��ǿ�ı��������Ը���ͼƬ�����̬����

hueData = hsv2rgb(hsvData); %תΪRGB��������ʾ
[hueHeight,hueWidth,hueDim] = size(hueData);

imagesc([-hueWidth/2:hueWidth/2],[-hueHeight/2,hueHeight/2],hueData);% �ѵ����ڰ����ŵ�ͼƬ����

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.backStep,'UserData',hueData);%����data,���ڴ洢��ͼ��
set(handles.open,'UserData',hueData);%����data,���ڴ洢��ͼ��
set(handles.open,'UserData',hueData);%����data,���ڴ洢��ͼ��
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
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��
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

sBlurRT= inputdlg({'������뾶�����أ�','��������ֵ��ɫ�ף�'},'Input',[1 40]);
sBlurR=str2num(sBlurRT{1});
sBlurT=str2num(sBlurRT{2});

imgn=Surface_Blur(g,sBlurR,sBlurT);

oriData(newPos(2):newPos(2)+newPos(4),newPos(1):newPos(1)+newPos(3),1:3)=imgn(:,:,1:3); 
sBlurData=oriData;

[sBlurHeight,sBlurWidth,sBlurDim] = size(sBlurData);
imagesc([-sBlurWidth/2:sBlurWidth/2],[-sBlurHeight/2,sBlurHeight/2],sBlurData);% �ѵ����ڰ����ŵ�ͼƬ����

set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.backStep,'UserData',sBlurData);%����data,���ڴ洢��ͼ��
set(handles.open,'UserData',sBlurData);%����data,���ڴ洢��ͼ��


% --------------------------------------------------------------------
function motionBlur_Callback(hObject, eventdata, handles)
% hObject    handle to motionBlur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��
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

mBlurAD= inputdlg({'������Ƕȣ��㣩','��������루���أ�'},'Input',[1 40]);
mBlurA=str2num(mBlurAD{1});
mBlurD=str2num(mBlurAD{2});

H = fspecial('motion',mBlurD,mBlurA);
imgn = imfilter(g,H,'replicate');

oriData(newPos(2):newPos(2)+newPos(4),newPos(1):newPos(1)+newPos(3),1:3)=imgn(:,:,1:3); 
mBlurData=oriData;

[mBlurHeight,mBlurWidth,mBlurDim] = size(mBlurData);
imagesc([-mBlurWidth/2:mBlurWidth/2],[-mBlurHeight/2,mBlurHeight/2],mBlurData);% �ѵ����ڰ����ŵ�ͼƬ����
resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);
set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.backStep,'UserData',mBlurData);%����data,���ڴ洢��ͼ��
set(handles.open,'UserData',mBlurData);%����data,���ڴ洢��ͼ��


% --------------------------------------------------------------------
function gaussBlur_Callback(hObject, eventdata, handles)
% hObject    handle to gaussBlur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��
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

mBlurH= inputdlg('������뾶�����أ�','Input',[1 40]);
mBlurH=str2num(mBlurH{1});
sigma=10;
H = fspecial('gaussian',mBlurH,sigma);
imgn  = imfilter(g,H,'replicate');

oriData(newPos(2):newPos(2)+newPos(4),newPos(1):newPos(1)+newPos(3),1:3)=imgn(:,:,1:3); 

gBlurData=oriData;

[gBlurHeight,gBlurWidth,gBlurDim] = size(gBlurData);
imagesc([-gBlurWidth/2:gBlurWidth/2],[-gBlurHeight/2,gBlurHeight/2],gBlurData);% �ѵ����ڰ����ŵ�ͼƬ����

set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;

set(handles.backStep,'UserData',gBlurData);%����data,���ڴ洢��ͼ��
set(handles.open,'UserData',gBlurData);%����data,���ڴ洢��ͼ��


% --------------------------------------------------------------------
function usmSharp_Callback(hObject, eventdata, handles)
% hObject    handle to usmSharp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��
[oriHeight,oriWidth,oriDim] = size(oriData);

resetData=get(handles.reset,'UserData'); 
[resetHeight,resetWidth,resetDim] = size(resetData);

mBlurRAT= inputdlg({'������뾶�����أ�','������������0-2֮�䣩','��������ֵ��0-1֮�䣩'},'Input',[1 40]);
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

imagesc([-usmSharpWidth/2:usmSharpWidth/2],[-usmSharpHeight/2,usmSharpHeight/2],usmSharpData);% �ѵ����ڰ����ŵ�ͼƬ����

set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;
set(handles.open,'UserData',usmSharpData);%����data,���ڴ洢��ͼ��
set(handles.backStep,'UserData',usmSharpData);%����data,���ڴ洢��ͼ��




% --- Executes on button press in cropBtn.
function cropBtn_Callback(hObject, eventdata, handles)
% hObject    handle to cropBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��
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
imagesc([-cropWidth/2:cropWidth/2],[-cropHeight/2,cropHeight/2],cropData);% �ѵ����ڰ����ŵ�ͼƬ����

set(gca,'XLim',[-resetWidth/2,resetWidth/2],'Color','white','XTick',[]);
set(gca,'YLim',[-resetHeight/2,resetHeight/2],'Color','white','YTick',[]);
axis equal;
% 
% oriData(newPos(2):newPos(2)+newPos(4),newPos(1):newPos(1)+newPos(3),1:3)=cropData; 
set(handles.backStep,'UserData',cropData);%����data,���ڴ洢��ͼ��
set(handles.open,'UserData',cropData);%����data,���ڴ洢��ͼ��
set(handles.pickBtn,'UserData',newPosBtn);


% --- Executes on button press in pickBtn.
function pickBtn_Callback(hObject, eventdata, handles)
% hObject    handle to pickBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

oriData=get(handles.open,'UserData');
set(handles.prevStep,'UserData',oriData);%����data,���ڴ洢��ͼ��
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
