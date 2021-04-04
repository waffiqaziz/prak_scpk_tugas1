function varargout = luasVolumeBalok(varargin)
% LUASVOLUMEBALOK MATLAB code for luasVolumeBalok.fig
%      LUASVOLUMEBALOK, by itself, creates a new LUASVOLUMEBALOK or raises the existing
%      singleton*.
%
%      H = LUASVOLUMEBALOK returns the handle to a new LUASVOLUMEBALOK or the handle to
%      the existing singleton*.
%
%      LUASVOLUMEBALOK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LUASVOLUMEBALOK.M with the given inputLebar arguments.
%
%      LUASVOLUMEBALOK('Property','Value',...) creates a new LUASVOLUMEBALOK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before luasVolumeBalok_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to luasVolumeBalok_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help luasVolumeBalok

% Last Modified by GUIDE v2.5 04-Apr-2021 09:53:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @luasVolumeBalok_OpeningFcn, ...
                   'gui_OutputFcn',  @luasVolumeBalok_OutputFcn, ...
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


% --- Executes just before luasVolumeBalok is made visible.
function luasVolumeBalok_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to luasVolumeBalok (see VARARGIN)

% Choose default command line output for luasVolumeBalok
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes luasVolumeBalok wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = luasVolumeBalok_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushLuas.
function pushLuas_Callback(~, ~, handles)
% hObject    handle to pushLuas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input = get (handles.inputLebar, 'string');
input2 = get (handles.inputPanjang, 'string');
input3 = get (handles.inputTinggi, 'string');
input = str2double (input); 
input2 = str2double (input2); 
input3 = str2double (input3); 
hasil = 2*(input*input2+input2*input3+input*input3);
set (handles.hasilLuas ,'String',(hasil));


% --- Executes on button press in pushVolume.
function pushVolume_Callback(~, ~, handles)
% hObject    handle to pushVolume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input = get (handles.inputLebar, 'string');
input2 = get (handles.inputPanjang, 'string');
input3 = get (handles.inputTinggi, 'string');
input = str2double (input); 
input2 = str2double (input2); 
input3 = str2double (input3); 
hasil = input3*input2*input;
set (handles.hasilVolume ,'String',(hasil));



function inputPanjang_Callback(~, ~, ~)
% hObject    handle to inputPanjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputPanjang as text
%        str2double(get(hObject,'String')) returns contents of inputPanjang as a double


% --- Executes during object creation, after setting all properties.
function inputPanjang_CreateFcn(hObject, ~, ~)
% hObject    handle to inputPanjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputTinggi_Callback(~, ~, ~)
% hObject    handle to inputTinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputTinggi as text
%        str2double(get(hObject,'String')) returns contents of inputTinggi as a double


% --- Executes during object creation, after setting all properties.
function inputTinggi_CreateFcn(hObject, ~, ~)
% hObject    handle to inputTinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function hasilLuas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilLuas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes during object creation, after setting all properties.
function hasilVolume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilLuas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
