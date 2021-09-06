function varargout = demoforsvd(varargin)
% DEMOFORSVD MATLAB code for demoforsvd.fig
%      DEMOFORSVD, by itself, creates a new DEMOFORSVD or raises the existing
%      singleton*.
%
%      H = DEMOFORSVD returns the handle to a new DEMOFORSVD or the handle to
%      the existing singleton*.
%
%      DEMOFORSVD('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DEMOFORSVD.M with the given input arguments.
%
%      DEMOFORSVD('Property','Value',...) creates a new DEMOFORSVD or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before demoforsvd_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to demoforsvd_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help demoforsvd

% Last Modified by GUIDE v2.5 26-Aug-2021 22:25:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @demoforsvd_OpeningFcn, ...
                   'gui_OutputFcn',  @demoforsvd_OutputFcn, ...
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


% --- Executes just before demoforsvd is made visible.
function demoforsvd_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to demoforsvd (see VARARGIN)

initialplot(handles);

% Choose default command line output for demoforsvd
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes demoforsvd wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = demoforsvd_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_x_Callback(hObject, eventdata, handles)
% hObject    handle to edit_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_x as text
%        str2double(get(hObject,'String')) returns contents of edit_x as a double


% --- Executes during object creation, after setting all properties.
function edit_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_y_Callback(hObject, eventdata, handles)
% hObject    handle to edit_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_y as text
%        str2double(get(hObject,'String')) returns contents of edit_y as a double


% --- Executes during object creation, after setting all properties.
function edit_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_A11_Callback(hObject, eventdata, handles)
% hObject    handle to edit_A11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_A11 as text
%        str2double(get(hObject,'String')) returns contents of edit_A11 as a double


% --- Executes during object creation, after setting all properties.
function edit_A11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_A11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_A12_Callback(hObject, eventdata, handles)
% hObject    handle to edit_A12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_A12 as text
%        str2double(get(hObject,'String')) returns contents of edit_A12 as a double


% --- Executes during object creation, after setting all properties.
function edit_A12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_A12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_A21_Callback(hObject, eventdata, handles)
% hObject    handle to edit_A21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_A21 as text
%        str2double(get(hObject,'String')) returns contents of edit_A21 as a double


% --- Executes during object creation, after setting all properties.
function edit_A21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_A21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_A22_Callback(hObject, eventdata, handles)
% hObject    handle to edit_A22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_A22 as text
%        str2double(get(hObject,'String')) returns contents of edit_A22 as a double


% --- Executes during object creation, after setting all properties.
function edit_A22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_A22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton_updateA.
function pushbutton_updateA_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_updateA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A11 = str2double(get(handles.edit_A11,'string'));
A12 = str2double(get(handles.edit_A12,'string'));
A21 = str2double(get(handles.edit_A21,'string'));
A22 = str2double(get(handles.edit_A22,'string'));
global A
A = [A11 A12; A21 A22];

updatematrix(handles);


% --- Executes on button press in pushbutton_plot.
function pushbutton_plot_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_plot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ax = str2double(get(handles.edit_x,'string'));
ay = str2double(get(handles.edit_y,'string'));
axn = ax/sqrt(ax^2+ay^2);
ayn = ay/sqrt(ax^2+ay^2);
avector = [axn;ayn];
global A
suvector = A * avector;
colorvec = rand(1,3);
axes(handles.axes1)

u3 = line([0 avector(1)],[0 avector(2)]);
u3.LineWidth = 2;
u3.Color = colorvec;

axes(handles.axes2)
h1 = line([0 suvector(1)],[0 suvector(2)])
h1.LineWidth = 2;
h1.Color = u3.Color;



% --- Executes on button press in pushbutton_clear.
function pushbutton_clear_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
updatematrix(handles)


function initialplot(handles)
theta = [0:0.01:2*pi];
x = cos(theta);
y = sin(theta);

axes(handles.axes1)
h = fill(x,y,'g')
h.FaceAlpha = 0.1
h.EdgeColor = 'none';
axis([-1.5 1.5 -1.5 1.5])
axis square
a1 = gca;
a1.Box = 'off';


function updatematrix(handles)
global A RANK
[U,S,V] = svd(A);
RANK = rank(A);

cla(handles.axes1)
initialplot(handles)
axes(handles.axes1)
u1 = line([0 V(1,1)],[0 V(2,1)]);
u1.LineStyle = '--';
u1.Color = 'r';
u1.LineWidth = 0.5;
u2 = line([0 V(1,2)],[0 V(2,2)]);
u2.LineStyle = '--';
u2.Color = 'b';
u2.LineWidth = 0.5;


cla(handles.axes2)
axes(handles.axes2)
if RANK == 2
    theta = [0:0.01:2*pi];
    x = cos(theta);
    y = sin(theta);
    ARRAY = [x;y];
    SU = A * ARRAY;
    axis_max = 1.2*max(SU,[],'all');
    h = fill(SU(1,:),SU(2,:),'b'), hold on
    h.FaceAlpha = 0.1
    h.EdgeColor = 'none';
else
    su1 = S(1,1).* U(:,1);
    h = line([-su1(1) su1(1)],[-su1(2) su1(2)]), hold on
    h.Color = [0 0 1 0.1];
    h.LineWidth = 1;
    axis_max = 1.2*max(abs(su1));
end
axis([-axis_max axis_max -axis_max axis_max])
axis square
a1 = gca;
a1.Box = 'off';
