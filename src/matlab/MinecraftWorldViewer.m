function varargout = MinecraftWorldViewer(varargin)
% MINECRAFTWORLDVIEWER MATLAB code for MinecraftWorldViewer.fig
%      MINECRAFTWORLDVIEWER, by itself, creates a new MINECRAFTWORLDVIEWER or raises the existing
%      singleton*.
%
%      H = MINECRAFTWORLDVIEWER returns the handle to a new MINECRAFTWORLDVIEWER or the handle to
%      the existing singleton*.
%
%      MINECRAFTWORLDVIEWER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MINECRAFTWORLDVIEWER.M with the given input arguments.
%
%      MINECRAFTWORLDVIEWER('Property','Value',...) creates a new MINECRAFTWORLDVIEWER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MinecraftWorldViewer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MinecraftWorldViewer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MinecraftWorldViewer

% Last Modified by GUIDE v2.5 18-Mar-2015 21:26:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MinecraftWorldViewer_OpeningFcn, ...
                   'gui_OutputFcn',  @MinecraftWorldViewer_OutputFcn, ...
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


% --- Executes just before MinecraftWorldViewer is made visible.
function MinecraftWorldViewer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MinecraftWorldViewer (see VARARGIN)

% Choose default command line output for MinecraftWorldViewer
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MinecraftWorldViewer wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MinecraftWorldViewer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function saveLocation_Callback(hObject, eventdata, handles)
% hObject    handle to saveLocation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of saveLocation as text
%        str2double(get(hObject,'String')) returns contents of saveLocation as a double


% --- Executes during object creation, after setting all properties.
function saveLocation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to saveLocation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in regionmenu.
function regionmenu_Callback(hObject, eventdata, handles)
% hObject    handle to regionmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns regionmenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from regionmenu


% --- Executes during object creation, after setting all properties.
function regionmenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to regionmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in chunkmenu.
function chunkmenu_Callback(hObject, eventdata, handles)
% hObject    handle to chunkmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns chunkmenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from chunkmenu


% --- Executes during object creation, after setting all properties.
function chunkmenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to chunkmenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in loadbutton1.
function loadbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to loadbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
