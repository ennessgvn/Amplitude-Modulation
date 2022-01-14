function varargout = ProjeHaberlesme(varargin)
% PROJEHABERLESME MATLAB code for ProjeHaberlesme.fig
%      PROJEHABERLESME, by itself, creates a new PROJEHABERLESME or raises the existing
%      singleton*.
%
%      H = PROJEHABERLESME returns the handle to a new PROJEHABERLESME or the handle to
%      the existing singleton*.
%
%      PROJEHABERLESME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJEHABERLESME.M with the given input arguments.
%
%      PROJEHABERLESME('Property','Value',...) creates a new PROJEHABERLESME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ProjeHaberlesme_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ProjeHaberlesme_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ProjeHaberlesme

% Last Modified by GUIDE v2.5 12-Jan-2022 00:03:43

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ProjeHaberlesme_OpeningFcn, ...
                   'gui_OutputFcn',  @ProjeHaberlesme_OutputFcn, ...
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


% --- Executes just before ProjeHaberlesme is made visible.
function ProjeHaberlesme_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ProjeHaberlesme (see VARARGIN)

% Choose default command line output for ProjeHaberlesme
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ProjeHaberlesme wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ProjeHaberlesme_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes3);
Am = get(handles.edit1,'String'); % Bilgi Sinyalinin Genliði
Am = str2double(Am);
fa = get(handles.edit2,'String'); % Bilgi Sinyalinin Frekansý
fa = str2double(fa);
Ac = get(handles.edit3,'String'); % Bilgi Sinyalinin Genliði
Ac = str2double(Ac);
fc = get(handles.edit4,'String'); % Bilgi Sinyalinin Frekansý
fc = str2double(fc);

m =1 ;
Ta=1/fa; % Bilgi sinyalinin periyodu
t=0:Ta/999:6*Ta; % Toplam simulasyon süresi
y=Ac*(1+m*sin(2*pi*fa*t)).*sin(2*pi*fc*t);

plot(t,y);
title ( '  Genlik Modüleli Sinyal  ');
xlabel ( ' Zaman(Saniye) ');
ylabel (' Genlik (Volt)   ');
grid on;

function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2);
Ac = get(handles.edit3,'String'); % Bilgi Sinyalinin Genliði
Ac = str2double(Ac);
fc = get(handles.edit4,'String'); % Bilgi Sinyalinin Frekansý
fc = str2double(fc);
fa = get(handles.edit2,'String'); % Bilgi Sinyalinin Frekansý
fa = str2double(fa);

Ta=1/fa; % Bilgi sinyalinin periyodu
t=0:Ta/999:6*Ta; % Toplam simulasyon süresi
yc=Ac*sin(2*pi*fc*t);

plot(t,yc), grid on;
title ( '  Taþýyýcý Sinyal   ');
xlabel ( ' Zaman(Saniye) ');
ylabel (' Genlik (Volt)   ');

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
Am = get(handles.edit1,'String'); % Bilgi Sinyalinin Genliði
Am = str2double(Am);
fa = get(handles.edit2,'String'); % Bilgi Sinyalinin Frekansý
fa = str2double(fa);


m =1 ;
Ta=1/fa; % Bilgi sinyalinin periyodu
t=0:Ta/999:6*Ta; % Toplam simulasyon süresi
ym=Am*sin(2*pi*fa*t);

plot(t,ym), grid on;
title ( '  Bilgi Sinyali   ');
xlabel ( ' Zaman(Saniye) ');
ylabel (' Genlik (Volt)   ');

% --- Executes during object creation, after setting all properties.
function pushbutton4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
