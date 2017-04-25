function varargout = MorseCodeTranslator(varargin)
% MORSECODETRANSLATOR MATLAB code for MorseCodeTranslator.fig
%      MORSECODETRANSLATOR, by itself, creates a new MORSECODETRANSLATOR or raises the existing
%      singleton*.
%
%      H = MORSECODETRANSLATOR returns the handle to a new MORSECODETRANSLATOR or the handle to
%      the existing singleton*.
%
%      MORSECODETRANSLATOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MORSECODETRANSLATOR.M with the given input arguments.
%
%      MORSECODETRANSLATOR('Property','Value',...) creates a new MORSECODETRANSLATOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MorseCodeTranslator_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MorseCodeTranslator_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MorseCodeTranslator

% Last Modified by GUIDE v2.5 11-Apr-2017 18:17:01

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MorseCodeTranslator_OpeningFcn, ...
                   'gui_OutputFcn',  @MorseCodeTranslator_OutputFcn, ...
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


% --- Executes just before MorseCodeTranslator is made visible.
function MorseCodeTranslator_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MorseCodeTranslator (see VARARGIN)

% Choose default command line output for MorseCodeTranslator
handles.output = hObject;

% Read in a picture for the display
try
    [logoArray, map] = imread('morse-code.jpg');

    %Switch active axes
    axes(handles.axes1);

    %Put the image array into the axes
    image(logoArray);
    colormap(map);
    set(gca, 'Visible', 'off');
    
catch exception
    disp('Could not find the logo file');
    disp(exception);
    set(handles.axes1, 'Visible', 'off');
end

% Read in a picture for the display
try
    [legendArray, map] = imread('morse-code.png');

    %Switch active axes
    axes(handles.axes2);

    %Put the image array into the axes
    image(legendArray);
    colormap(map);
    set(gca, 'Visible', 'off');
    
catch exception
    disp('Could not find the legend file');
    disp(exception);
    set(handles.axes1, 'Visible', 'off');
end

% openPorts = instrhwinfo('serial');

% if (~isempty(openPorts.AvailableSerialPorts))

%     handles.PortName = char(openPorts.AvailableSerialPorts(1));
    handles.PortName = 'COM1';
    handles.BaudRate = 9600;
    handles.DataBits = 8;
    handles.port1 = serial(handles.PortName, 'BaudRate', handles.BaudRate, 'DataBits', handles.DataBits);

    fopen(handles.port1);
    disp(['Opened up serial port ' handles.PortName ' with Baud Rate ' int2str(handles.BaudRate) ' and ' int2str(handles.DataBits) ' bits.']);

% end

handles.text_to_translate = get(handles.edit1, 'String');

% Timing delays for each character
time_unit = 0.2; % Single Time Unit
dot = 1*time_unit;
dash = 3*time_unit;
gap = 1*time_unit;

% Build a timing map for the Morse Code Characters
keySet = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p',...
          'q','r','s','t','u','v','w','x','y','z','1','2','3','4','5',...
          '6','7','8','9','0'};

valueSet = [dot + dash + gap,           ... %a
            3*dot + dash + 3*gap,       ... %b
            2*dot + 2*dash + 3*gap,     ... %c
            2*dot + dash + 2*gap,       ... %d
            dot,                        ... %e
            3*dot + dash + 3*gap,       ... %f
            dot + 2*dash + 2*gap,       ... %g
            4*dot + 3*gap,              ... %h
            2*dot + gap,                ... %i
            dot + 3*dash + 3*gap,       ... %j
            dot + 2*dash + 2*gap,       ... %k
            3*dot + dash + 3*gap,       ... %l
            2*dash + gap,               ... %m
            dot + dash + gap,           ... %n
            3*dash + 2*gap,             ... %o
            2*dot + 2*dash + 3*gap,     ... %p
            dot + 3*dash + 3*gap,       ... %q
            2*dot + dash + 2*gap,       ... %r
            3*dot + 2*gap,              ... %s
            dash,                       ... %t
            2*dot + dash + 2*gap,       ... %u
            3*dot + dash + 3*gap,       ... %v
            dot + 2*dash + 2*gap,       ... %w
            2*dot + 2*dash + 3*gap,     ... %x
            dot + 3*dash + 3*gap,       ... %y
            2*dot + 2*dash + 3*gap,     ... %z
            dot + 4*dash + 4*gap,       ... %1
            2*dot + 3*dash + 4*gap,     ... %2
            3*dot + 2*dash + 4*gap,     ... %3
            4*dot + dash + 4*gap,       ... %4
            5*dot + 4*gap,              ... %5
            4*dot + dash + 4*gap,       ... %6
            3*dot + 2*dash + 4*gap,     ... %7
            2*dot + 3*dash + 4*gap,     ... %8
            dot + 4*dash + 4*gap,       ... %9
            5*dash + 4*gap];                %0
            

handles.timing_map = containers.Map(keySet, valueSet);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MorseCodeTranslator wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MorseCodeTranslator_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
if(~isempty(get(hObject, 'String')))
    handles.text_to_translate = get(hObject, 'String');
end

% Update handles structure
guidata(hObject, handles);


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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if (~isempty(handles.text_to_translate))
    set(handles.edit1, 'Enable', 'inactive');
    set(handles.pushbutton1, 'Enable', 'inactive');
    
    for i = 1:length(handles.text_to_translate)
        set(handles.edit2, 'String', upper(handles.text_to_translate(i)));

        % If the character is a valid morse character
        if (handles.timing_map.isKey(lower(handles.text_to_translate(i))))
            fwrite(handles.port1, lower(handles.text_to_translate(i)));
            pause(handles.timing_map(lower(handles.text_to_translate(i))));
        else
            fwrite(handles.port1, lower(handles.text_to_translate(i)));
        end
        
        % Account for the space between words
        if ((lower(handles.text_to_translate(i))- 0) == 32)
            fwrite(handles.port1, lower(handles.text_to_translate(i)));
            pause(7*handles.timing_map('e')); % Spaces count for 7 time units
        end
    end
    
    set(handles.pushbutton1, 'Enable', 'on');
    set(handles.edit1, 'Enable', 'on');
end

set(handles.edit2, 'String', '');

% Update handles structure
guidata(hObject, handles);


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


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(handles.port1);
disp(['Closing port ' handles.PortName]);
delete(hObject);
