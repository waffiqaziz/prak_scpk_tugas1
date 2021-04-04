function varargout = cekKabisat(varargin)
% CEKKABISAT MATLAB code for cekKabisat.fig
%      CEKKABISAT, by itself, creates a new CEKKABISAT or raises the existing
%      singleton*.
%
%      H = CEKKABISAT returns the handle to a new CEKKABISAT or the handle to
%      the existing singleton*.
%
%      CEKKABISAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CEKKABISAT.M with the given input arguments.
%
%      CEKKABISAT('Property','Value',...) creates a new CEKKABISAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before cekKabisat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to cekKabisat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help cekKabisat

% Last Modified by GUIDE v2.5 03-Apr-2021 22:19:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @cekKabisat_OpeningFcn, ...
                   'gui_OutputFcn',  @cekKabisat_OutputFcn, ...
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


% --- Executes just before cekKabisat is made visible.
function cekKabisat_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to cekKabisat (see VARARGIN)

% Choose default command line output for cekKabisat
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes cekKabisat wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = cekKabisat_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function input_Callback(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input as text
%        str2double(get(hObject,'String')) returns contents of input as a double


% --- Executes during object creation, after setting all properties.
function input_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.


% --- Executes on button press in submit.
function submit_Callback(hObject, eventdata, handles)
% hObject    handle to submit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
input = get (handles.input, 'string');
input = str2double (input); 

if  (mod(input,400) == 0)
    set (handles.hasil,'String',('Tahun Kabisat'));
elseif (mod(input,100) == 0)
    set (handles.hasil,'String',('Bukan Tahun Kabisat'));
elseif (mod(input,4) == 0)
    set (handles.hasil,'String',('Tahun Kabisat'));
end

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over header.
function header_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to header (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
