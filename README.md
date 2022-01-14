# Amplitude-Modulation

function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes3);
Am = get(handles.edit1,'String'); % Bilgi Sinyalinin Genliği
Am = str2double(Am);
fa = get(handles.edit2,'String'); % Bilgi Sinyalinin Frekansı
fa = str2double(fa);
Ac = get(handles.edit3,'String'); % Bilgi Sinyalinin Genliği
Ac = str2double(Ac);
fc = get(handles.edit4,'String'); % Bilgi Sinyalinin Frekansı
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

function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes2);
Ac = get(handles.edit3,'String'); % Bilgi Sinyalinin Genliği
Ac = str2double(Ac);
fc = get(handles.edit4,'String'); % Bilgi Sinyalinin Frekansı
fc = str2double(fc);
fa = get(handles.edit2,'String'); % Bilgi Sinyalinin Frekansı
fa = str2double(fa);

Ta=1/fa; % Bilgi sinyalinin periyodu
t=0:Ta/999:6*Ta; % Toplam simulasyon süresi
yc=Ac*sin(2*pi*fc*t);

plot(t,yc), grid on;
title ( '  Taşıyıcı Sinyal   ');
xlabel ( ' Zaman(Saniye) ');
ylabel (' Genlik (Volt)   ');

function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes1);
Am = get(handles.edit1,'String'); % Bilgi Sinyalinin Genliği
Am = str2double(Am);
fa = get(handles.edit2,'String'); % Bilgi Sinyalinin Frekansı
fa = str2double(fa);


m =1 ;
Ta=1/fa; % Bilgi sinyalinin periyodu
t=0:Ta/999:6*Ta; % Toplam simulasyon süresi
ym=Am*sin(2*pi*fa*t);

plot(t,ym), grid on;
title ( '  Bilgi Sinyali   ');
xlabel ( ' Zaman(Saniye) ');
ylabel (' Genlik (Volt)   ');







