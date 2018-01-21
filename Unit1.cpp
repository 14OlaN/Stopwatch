//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "trayicon"
#pragma resource "*.dfm"
TForm1 *Form1;
int total = 0;
int i = 0;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
total++;
int hour = total/36000;
int minute = (total-hour*36000)/600;
int second = (total-(36000*hour)-(minute*600))/10;
int centisecond = total-(36000*hour)-(minute*600) - (second*10);
AnsiString h = IntToStr(hour);
AnsiString m = IntToStr(minute);
AnsiString s = IntToStr(second);
AnsiString c = IntToStr(centisecond);
if (centisecond < 10)
        c = "0" + c;
if (second < 10)
        s = "0" + s;
if (minute < 10)
        m = "0" + m;
if (hour < 10)
        h = "0" + h;
Label1->Caption= h + " : " + m + " : " + s + " : " + c;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
if (Button1->Caption == "Start") {
        Timer1->Enabled = true;
        Button1->Caption = "Stop";
}
else {
        Timer1->Enabled = false;
        Button1->Caption = "Start";
}
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Button2Click(TObject *Sender)
{
Label1->Caption = "00 : 00 : 00 : 00";
total = 0;
// ListBox1->Items->clear;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button3Click(TObject *Sender)
{
int lap = total - i;
i = total;
int hour = lap/36000;
int minute = (lap-hour*36000)/600;
int second = (lap-(36000*hour)-(minute*600))/10;
int centisecond = lap-(36000*hour)-(minute*600) - (second*10);
AnsiString h = IntToStr(hour);
AnsiString m = IntToStr(minute);
AnsiString s = IntToStr(second);
AnsiString c = IntToStr(centisecond);
if (centisecond < 10)
        c = "0" + c;
if (second < 10)
        s = "0" + s;
if (minute < 10)
        m = "0" + m;
if (hour < 10)
        h = "0" + h;
ListBox1->Items->Add(h + " : " + m + " : " + s + " : " + c);

}
//---------------------------------------------------------------------------









void __fastcall TForm1::TrayIcon1Click(TObject *Sender)
{
Show();
Application->BringToFront();
}
//---------------------------------------------------------------------------

