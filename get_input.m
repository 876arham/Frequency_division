function input = get_input()
    input = [];
    F_s = 1000000;
    disp("Live recording started for 1st channel for 5secs");
    rec=audiorecorder(F_s,16,1);
    recordblocking(rec,5);
    disp("End of recording");
    input(1)=getaudiodata(rec);
    pause(1);
    disp("Live recording started for 2nd channel for 5secs");
    rec=audiorecorder(F_s,16,1);
    recordblocking(rec,5);
    disp("End of recording");
    input(2)=getaudiodata(rec);
    pause(1);
    disp("Live recording started for 3rd channel for 5secs");
    rec=audiorecorder(F_s,16,1);
    recordblocking(rec,5);
    disp("End of recording");
    input(3)=getaudiodata(rec);
    pause(1);
    disp("Live recording started for 4th channel for 5secs");
    rec=audiorecorder(F_s,16,1);
    recordblocking(rec,5);
    input(4)=getaudiodata(rec);
    disp("End of recording");
end