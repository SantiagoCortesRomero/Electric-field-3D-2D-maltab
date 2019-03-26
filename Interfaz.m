function varargout = Interfaz(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Interfaz_OpeningFcn, ...
                   'gui_OutputFcn',  @Interfaz_OutputFcn, ...
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
function Interfaz_OpeningFcn(hObject, eventdata, handles, varargin)

datos=get(handles.uitable3, 'Data');

datos=[];

set(handles.uitable3, 'Data', datos);


handles.output = hObject;

guidata(hObject, handles);

function varargout = Interfaz_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;





function pushbutton_C1_Callback(hObject, eventdata, handles)
% Sacar la posición vectorial del punto P

posP = str2num(get(handles.posP,'String'));


matrizP=(get(handles.uitable3,'data'));

CampoEnPunto

function pushbutton_3D_Callback(hObject, eventdata, handles)

matrizP=(get(handles.uitable3,'data'));
C3d


function pushbutton_2D_Callback(hObject, eventdata, handles)

matrizP=(get(handles.uitable3,'data')); 
efield2d



function reset_Callback(hObject, eventdata, handles)


cla(handles.espacio3d,'reset')


function Ptext_Callback(hObject, eventdata, ~)

function Ptext_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function posP_Callback(hObject, eventdata, handles)

function posP_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function compute_Callback(hObject, eventdata, handles)

% %Sacar la posición vectorial del punto P
posP = str2num(get(handles.posP,'string'));
matrizP=(get(handles.uitable3,'data')); 
 tabla


% --- Executes on button press in add.
function add_Callback(hObject, eventdata, handles)
X=str2double(get(handles.posx,'String'));
Y=str2double(get(handles.posy,'String'));
Z=str2double(get(handles.posz,'String'));
C=str2double(get(handles.mag,'String'));

data=get(handles.uitable3, 'data');
data(end+1,:)=[X,Y,Z,C];
set(handles.uitable3, 'data', data);


% --- Executes during object creation, after setting all properties.
function uitable3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tabla (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% --- Executes during object creation, after setting all properties.

% --- Executes on key press with focus on uitable3 and none of its controls.
function uitable3_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to uitable3 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)

% --- Executes when entered data in editable cell(s) in uitable1.
function uitable3_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)

function tabla_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tabla (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function posx_Callback(hObject, eventdata, handles)
% hObject    handle to posx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of posx as text
%        str2double(get(hObject,'String')) returns contents of posx as a double


% --- Executes during object creation, after setting all properties.
function posx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to posx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function posy_Callback(hObject, eventdata, handles)
% hObject    handle to posy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of posy as text
%        str2double(get(hObject,'String')) returns contents of posy as a double


% --- Executes during object creation, after setting all properties.
function posy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to posy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function posz_Callback(hObject, eventdata, handles)
% hObject    handle to posz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of posz as text
%        str2double(get(hObject,'String')) returns contents of posz as a double


% --- Executes during object creation, after setting all properties.
function posz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to posz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mag_Callback(hObject, eventdata, handles)
% hObject    handle to mag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mag as text
%        str2double(get(hObject,'String')) returns contents of mag as a double


% --- Executes during object creation, after setting all properties.
function mag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
