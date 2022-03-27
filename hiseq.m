function hiseq(handles)
% hObject    handle to hiseqbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
new_min= str2double(get(handles.edit9,'string'));
new_max= str2double(get(handles.edit10,'string'));
global x;
[H W L]=size(x);
new_img=zeros(H,W);
new_img=im2double(new_img);
old_min=min(min(x));
old_max=max(max(x));

for i=1:H
    for j=1:W
        new_img(i,j)=(((x(i,j)-old_min)/(old_max-old_min))*(new_max-new_min))+new_min;
    end
end
