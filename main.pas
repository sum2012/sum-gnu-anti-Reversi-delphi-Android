{
   This file is part of Sum GNU Anti reversi program.

    Sum GNU Anti reversi is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Foobar is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Sum GNU Anti reversi.  If not, see <http://www.gnu.org/licenses/>.

}
unit main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.ListBox, FMX.Objects, FMX.Edit
  {$IFDEF ANDROID}
   ,FMX.Platform.Android;
  {$ENDIF}
  {$IFDEF MSWINDOWS}
  ;
  {$ENDIF}

const
  inf = 10000;

type
  Tboard=array[0..9,0..9] of integer;
//  Tmovelist = array[1..20] of integer;
//  TAppleResult = record
//         score:integer;
//          step:Tmovelist;
//end;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    ToolBar1: TToolBar;
    NewButton: TButton;
    DepthButton: TButton;
    Panel1: TPanel;
    ENRadioButton: TRadioButton;
    CNRadioButton: TRadioButton;
    TWRadioButton: TRadioButton;
    BGImage: TImage;
    Chess1: TImage;
    Chess2: TImage;
    BlackChess: TImage;
    RedChess: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Image16: TImage;
    Image17: TImage;
    Image18: TImage;
    Image19: TImage;
    Image20: TImage;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    Image24: TImage;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    Image29: TImage;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Image35: TImage;
    Image36: TImage;
    Image37: TImage;
    Image38: TImage;
    Image39: TImage;
    Image40: TImage;
    Image41: TImage;
    Image42: TImage;
    Image43: TImage;
    Image44: TImage;
    Image45: TImage;
    Image46: TImage;
    Image47: TImage;
    Image48: TImage;
    Image49: TImage;
    Image50: TImage;
    Image51: TImage;
    Image52: TImage;
    Image53: TImage;
    Image54: TImage;
    Image55: TImage;
    Image56: TImage;
    Image57: TImage;
    Image58: TImage;
    Image59: TImage;
    Image60: TImage;
    Image61: TImage;
    Image62: TImage;
    Image63: TImage;
    Image64: TImage;
    ChessBGImage: TImage;
    StepListBox: TListBox;
    Panel2: TPanel;
    LangButton: TButton;
    NewGameButton: TButton;
    AiListBox: TListBox;
    CloseButton: TButton;
    Panel3: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    NormalDepth2: TRadioButton;
    NormalDepth3: TRadioButton;
    NormalDepth4: TRadioButton;
    EndgameDepth7: TRadioButton;
    EndgameDepth8: TRadioButton;
    HumanVsComputer: TRadioButton;
    ComputerVsHuman: TRadioButton;
    ThinkstepEdit: TEdit;
    AIDisplayScoreLabel: TLabel;
    EndgameDepth9: TRadioButton;
    Lang1: TLang;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure LangButtonClick(Sender: TObject);
    procedure CNRadioButtonChange(Sender: TObject);
    procedure TWRadioButtonChange(Sender: TObject);
    procedure ENRadioButtonChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RedChessClick(Sender: TObject);
    procedure BlackChessClick(Sender: TObject);
    procedure HumanVsComputerClick(Sender: TObject);
    procedure ComputerVsHumanClick(Sender: TObject);
    procedure DepthButtonClick(Sender: TObject);
    procedure NewButtonClick(Sender: TObject);
    procedure NewGameButtonClick(Sender: TObject);
    procedure NormalDepth2Change(Sender: TObject);
    procedure EndgameDepth7Change(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    initboard,board:Tboard;
    Redlist,Blacklist,templist:TStringList;
    RedNoMove,BlackNoMove:Boolean;
    AiMovelist:string;
    RealDepth:integer;
    Nornaldepth,Endgamedepth:integer;
    procedure Score(const Aboard:Tboard;var RedScore,BlackScore:integer);
    procedure RedBoardUpdate(var Aboard:Tboard;LastChess:Integer);
    procedure BlackBoardUpdate(var Aboard:Tboard;LastChess:Integer);
    procedure MakeRedMove(const ABoard:Tboard;var temp:TStringList);
    procedure MakeBlackMove(const ABoard:Tboard;var temp:TStringList);
    procedure MakeClick(t:Tstringlist;Player:string);
    procedure Updateboard;
    function AI(Aboard:Tboard;ComputerIsRed:Boolean):string;
    function ThinkNumber(Aboard:Tboard;SideIsRed:Boolean;depth:integer):integer;
    function MinMaxRandom(Aboard:Tboard;SideIsRed:Boolean;depth:integer;var aithinkstep:string):integer;
    function EvaluateScore(const Aboard:Tboard;const SideIsRed:Boolean):Integer;
    function MinMax(Aboard:Tboard;SideIsRed:Boolean;depth:integer;var aithinkstep:string):integer;
    procedure InitHumanFirst;
    procedure InitComputerFirst;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  PosMark:Tboard = (
    (0,0,0,0,0,0,0,0,0,0),
      (0,-199,3,-1,-1,-1,-1,3,-199,0),
      (0,3,-1,-1,-1,-1,-1,-1,3,0),
       (0,-1,-1,-1,-1,-1,-1,-1,-1,0),
       (0,-1,-1,-1,-1,-1,-1,-1,-1,0),
       (0,-1,-1,-1,-1,-1,-1,-1,-1,0),
       (0,-1,-1,-1,-1,-1,-1,-1,-1,0),
      (0,3,-1,-1,-1,-1,-1,-1,3,0),
      (0,-199,3,-1,-1,-1,-1,3,-199,0),
    (0,0,0,0,0,0,0,0,0,0)
      );

implementation

{$R *.fmx}

procedure TForm1.NewGameButtonClick(Sender: TObject);
begin
  board:=Initboard;
  Redlist.Clear;
  BlackList.Clear;
  AiListBox.Clear;
  Updateboard;
  if ComputerVSHuman.IsChecked then
    InitComputerFirst
  else
    InitHumanFirst;
  Panel2.Visible := False;
end;

procedure TForm1.LangButtonClick(Sender: TObject);
begin
  if (Not Panel2.Visible and Not Panel3.Visible) then
    Panel1.Visible := not Panel1.Visible;
end;

procedure TForm1.DepthButtonClick(Sender: TObject);
begin
  if (Not Panel1.Visible and Not Panel2.Visible) then
    Panel3.Visible := not Panel3.Visible;
end;

procedure TForm1.NewButtonClick(Sender: TObject);
begin
  If (not Panel1.Visible and not Panel3.Visible) then
  Panel2.Visible := Not Panel2.Visible;
end;

procedure TForm1.NormalDepth2Change(Sender: TObject);
begin
  Nornaldepth := strToInt(TRadioButton(Sender).text);
  Panel2.Visible := False;
end;

procedure TForm1.RedChessClick(Sender: TObject);
var a,b,c:integer;//templist:Tstringlist;
begin
  Timage(Sender).Bitmap := Chess2.Bitmap;
  Timage(Sender).OnClick := nil;
  // clean the t
  For a:= 0 to Redlist.Count-1 do
  begin
    if Timage(FindComponent(Redlist[a])) <> Timage(Sender) then
    begin
      Timage(FindComponent(Redlist[a])).Bitmap := ChessBGImage.Bitmap;
      Timage(FindComponent(Redlist[a])).onclick := nil;
    end;
  end;
  a:=StrToint(Copy(TComponent(Sender).name,6,2));
   b:= a div 8 +1 ;
  c:= a mod 8;
  if c = 0 then
  begin
    b:=b-1;
    c:=8;
  end;
  board[c][b] := 1;
//    if notinback = true then
//  begin
    if c <> 0 then
      StepListbox.Items.Add('Red '+intTostr(c)+','+inttostr(b))
    else
      StepListbox.Items.Add('Red 8,'+inttostr(b-1));
//  end;
  StepListbox.ItemIndex:=StepListbox.items.Count-1;
    redlist.Clear;
  blacklist.Clear;
  score(board,b,c);
  if b + c < 4 then
  begin
//    Image28.OnClick := nil;
//    Image29.OnClick := nil;
//    Image36.OnClick := nil;
//    templist := Tstringlist.Create;
    if board[4][4] = 0 then
    begin
       Image28.OnClick := BlackChessClick;
       Image28.Bitmap := BlackChess.Bitmap;
       Blacklist.Add('Image28');
  //     templist.Add('Image28');
    end;
    if board[5][4] = 0 then
    begin
       Image29.OnClick := BlackChessClick;
       Image29.Bitmap := BlackChess.Bitmap;
       Blacklist.Add('Image29');
//     templist.Add('Image29');
    end;
    if board[4][5] = 0 then
    begin
       Image36.OnClick := BlackChessClick;
       Image36.Bitmap := BlackChess.Bitmap;
       Blacklist.Add('Image36');
 //      templist.Add('Image36');
    end;
    if board[5][5] = 0 then
    begin
       Image37.OnClick := BlackChessClick;
       Image37.Bitmap := BlackChess.Bitmap;
       Blacklist.Add('Image37');
  //     templist.Add('Image37');
    end;
    a := Random(Blacklist.Count);
   if HumanVsComputer.IsChecked then
      BlackChessclick(Timage(FindComponent(Blacklist[a])));
//     templist.Free;
    exit;
  end;
  RedboardUpdate(board,a);
  templist.Clear;
  MakeBlackMove(board,templist);
  if templist.Count > 0 then
  begin
    MakeClick(templist,'player2');
    RedNoMove:=False;
    BlackNoMove:=False;
    Updateboard;
    if HumanVsComputer.IsChecked then
    begin
//    if (HumanVsComputer.Checked = true) and (FirstIsRed = true) or (ComputerVsHuman.Checked = true) and (FirstIsRed = false) then
//    begin
//      Application.ProcessMessages;
//      Sleep(2000);
      BlackChessclick(Timage(FindComponent(AI(board,False))));
    end;
  end
    else
  begin
//    if notinback =False then
//      exit;
    StepListBox.Items.Add('Black pass');
//    c:=movedlist.Add('Blackpass');
//    for a:=1 to 8 do
//      for b:=1 to 8 do
//      movedlist[c]:=movedlist[c]+intTostr(board[a][b]+1);
//    if StepListBox.items.count > 1 then
//      backbutton.enabled:=True;
    if RedNoMove = True then
    begin
      Updateboard;
      score(board,a,b);
      if a < b Then
        ShowMessage('Both no more move,finish game'+#13+'Red win')
      else if a < b then
        ShowMessage('Both no more move,finish game'+#13+'Black win')
      else if a = b then
        ShowMessage('Both no more move,finish game'+#13+'Draw');
    end
    else begin
      Updateboard;
      templist.Clear;
      if a+b <> 64 then
        ShowMessage('Black no move');
      MakeRedMove(board,templist);
      if templist.Count > 0 then
      begin
        MakeClick(templist,'player1');
        RedNoMove:=False;
        BlackNoMove:=False;
        Updateboard;
        if ComputerVsHuman.isChecked = true then
//        if (ComputerVsHuman.Checked = true) and (FirstIsRed = true) then
        begin
          Application.ProcessMessages;
          Sleep(2000);
//        RedChessclick(Timage(FindComponent(templist[0])));
          RedChessclick(Timage(FindComponent(AI(board,True))));
//          Updateboard;
        end;
      end
      else begin
 //       if NotInBack = True then
//        begin
        StepListBox.Items.Add('Red pass');
//        c:=movedlist.Add('Redpass');
//        for a:=1 to 8 do
//         for b:=1 to 8 do
//        movedlist[c]:=movedlist[c]+intTostr(board[a][b]+1);
//        end;
//        if StepListBox.items.count > 1 then
//          backbutton.enabled:=True;
        score(board,a,b);
        if a < b Then
          ShowMessage('Both no more move,finish game'+#13+'Red win')
        else if a > b then
          ShowMessage('Both no more move,finish game'+#13+'Black win')
        else if a = b then
          ShowMessage('Both no more move,finish game'+#13+'Draw');
      end;
    end;
  end;
end;

procedure TForm1.BlackChessClick(Sender: TObject);
var a,b,c:integer;
begin
  Timage(Sender).Bitmap := Chess1.Bitmap;
  Timage(Sender).OnClick := nil;
  // clean the t
  For a:= 0 to Redlist.Count-1 do
  begin
    if Timage(FindComponent(Redlist[a])) <> Timage(Sender) then
    begin
      Timage(FindComponent(Redlist[a])).Bitmap := ChessBGImage.Bitmap;
      Timage(FindComponent(Redlist[a])).onclick := nil;
    end;
  end;
  a:=StrToint(Copy(TComponent(Sender).name,6,2));
   b:= a div 8 +1 ;
  c:= a mod 8;
  if c = 0 then
  begin
    b:=b-1;
    c:=8;
  end;
  board[c][b] := -1;
//    if notinback = true then
//  begin
    if c <> 0 then
      StepListbox.Items.Add('Black '+intTostr(c)+','+inttostr(b))
    else
      StepListbox.Items.Add('Black 8,'+inttostr(b-1));
//  end;
  StepListbox.ItemIndex:=StepListbox.items.Count-1;
    Score(board,b,c);
  Blacklist.Clear;
  Redlist.Clear;
  if b + c < 4 then
  begin
//    Label3.Caption:=intTostr(b);
//    Label4.Caption:=intTostr(c);
//    Image28.OnClick := nil;
//    Image29.OnClick := nil;
//    Image36.OnClick := nil;
//    Image37.OnClick := nil;
//    templist := Tstringlist.Create;
    if board[4][4] = 0 then
    begin
       Image28.OnClick := RedChessClick;
       Image28.Bitmap := RedChess.Bitmap;
       Blacklist.Add('Image28');
//       templist.Add('Image28');
    end;
    if board[5][4] = 0 then
    begin
       Image29.OnClick := RedChessClick;
       Image29.Bitmap := RedChess.Bitmap;
       Blacklist.Add('Image29');
 //      templist.Add('Image29');
    end;
    if board[4][5] = 0 then
    begin
       Image36.OnClick := RedChessClick;
       Image36.Bitmap := RedChess.Bitmap;
       Blacklist.Add('Image36');
 //      templist.Add('Image36');
    end;
    if board[5][5] = 0 then
    begin
       Image37.OnClick := RedChessClick;
       Image37.Bitmap := RedChess.Bitmap;
       Blacklist.Add('Image37');
//       templist.Add('Image37');
    end;
    a := Random(Blacklist.Count);
   if ComputerVsHuman.IsChecked then
      RedChessclick(Timage(FindComponent(Blacklist[a])));
//     templist.Free;
    exit;
  end;
  BlackboardUpdate(board,a);
  templist.Clear;
  MakeRedMove(board,templist);
    if templist.Count >0 then
  begin
    RedNoMove:=False;
    BlackNoMove:=False;
    MakeClick(templist,'player1');
    Updateboard;
    if ComputerVsHuman.isChecked then
//    if (HumanVsComputer.Checked = true) and (FirstIsRed = false) or (ComputerVsHuman.Checked = True) and (FirstIsRed = true) then
    begin
      Application.ProcessMessages;
      Sleep(2000);
//      RedChessclick(Timage(FindComponent(templist[0])));
      RedChessclick(Timage(FindComponent(AI(board,true))));
 //     Updateboard;
    end;
  end
  else begin
 //   if notinback =False then
//      exit;
    StepListBox.Items.Add('Red pass');
    //c:=movedlist.Add('Red');

//    for a:=1 to 8 do
//     for b:=1 to 8 do
//    movedlist[c]:=movedlist[c]+intTostr(board[a][b]+1);
//may be correcteed
    if RedNoMove = True then
    begin
      Updateboard;
      score(board,a,b);
      if a < b Then
        ShowMessage('Both no more move,finish game'+#13+'Red win')
      else if a > b then
        ShowMessage('Both no more move,finish game'+#13+'Black win')
      else if a = b then
        ShowMessage('Both no more move,finish game'+#13+'Draw');
    end
    else begin
      Updateboard;
      if a+b <> 64 then
        ShowMessage('Red pass');
      templist.clear;
      MakeBlackMove(board,templist);
      if templist.Count > 0 then
      begin
        MakeClick(templist,'player2');
        RedNoMove:=False;
        BlackNoMove:=False;
       Updateboard;
      if HumanVsComputer.isChecked then
//    if (HumanVsComputer.Checked = true) and (FirstIsRed = false) or (HumanVsComputer.Checked = false) and (FirstIsRed = false) then
        begin
//          Application.ProcessMessages;
//          Sleep(2000);
          BlackChessclick(Timage(FindComponent(AI(board,False))));
        end;
      end
      else begin
//      if NotInback = True then
      begin
        StepListBox.Items.Add('Black pass');
//        c:=movedlist.Add('Black');
//        for a:=1 to 8 do
//         for b:=1 to 8 do
//        movedlist[c]:=movedlist[c]+intTostr(board[a][b]+1);
      end;
      score(board,a,b);
      //corrected
      if a < b Then
        ShowMessage('Both no more move,finish game'+#13+'Red win')
      else if a > b then
        ShowMessage('Both no more move,finish game'+#13+'Black win')
      else if a = b then
        ShowMessage('Both no more move,finish game'+#13+'Draw');
      end;
    end;
  end;
  templist.clear;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Panel2.Visible:= False;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Panel1.Visible := False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   Panel3.Visible := False;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ShowMessage('This program is GNU 3 or later version license.'+ #13+
  'Help and support in https://github.com/sum2012/anti-Reversi-delphi-Android');
end;

procedure TForm1.TWRadioButtonChange(Sender: TObject);
begin
   Lang1.Lang := 'tw';
   Panel1.Visible := False;
end;

procedure TForm1.CloseButtonClick(Sender: TObject);
begin
  {$IFDEF ANDROID}
   MainActivity.finish;
   exit;
  {$ENDIF}
   Application.Terminate;
end;

procedure TForm1.CNRadioButtonChange(Sender: TObject);
begin
  Lang1.Lang := 'cn';
  Panel1.Visible := False;
end;

procedure TForm1.ComputerVsHumanClick(Sender: TObject);
begin
  HumanVsComputer.IsChecked := Not HumanVsComputer.IsChecked;
end;

procedure TForm1.EndgameDepth7Change(Sender: TObject);
begin
  Endgamedepth := strToInt(TRadioButton(Sender).text);
end;

procedure TForm1.ENRadioButtonChange(Sender: TObject);
begin
   Lang1.Lang := 'en';
   Panel1.Visible := False;
end;



procedure TForm1.InitComputerFirst;
var a:integer;
begin
//    if board[4][4] = 0 then
//    begin
//       Image28.OnClick := BlackChessClick;
//       Image28.Bitmap := BlackChess.Bitmap;
       Redlist.Add('Image28');
  //     templist.Add('Image28');
//    end;
//    if board[5][4] = 0 then
//    begin
//       Image29.OnClick := BlackChessClick;
//       Image29.Bitmap := BlackChess.Bitmap;
       Redlist.Add('Image29');
//     templist.Add('Image29');
//    end;
//    if board[4][5] = 0 then
//    begin
//       Image36.OnClick := BlackChessClick;
//       Image36.Bitmap := BlackChess.Bitmap;
       Redlist.Add('Image36');
 //      templist.Add('Image36');
 //   end;
//    if board[5][5] = 0 then
//    begin
//       Image37.OnClick := BlackChessClick;
//       Image37.Bitmap := BlackChess.Bitmap;
       Redlist.Add('Image37');
  //     templist.Add('Image37');
//    end;
    a := Random(Redlist.Count);
    RedChessclick(Timage(FindComponent(Redlist[a])));
//     templist.Free;

end;

procedure TForm1.InitHumanFirst;
begin
   Image28.Bitmap := Redchess.Bitmap;
  Image29.Bitmap := Redchess.Bitmap;
  Image36.Bitmap := Redchess.Bitmap;
  Image37.Bitmap := Redchess.Bitmap;
  Image28.OnClick := Redchess.OnClick;
  Image29.OnClick := Redchess.OnClick;
  Image36.OnClick := Redchess.OnClick;
  Image37.OnClick := Redchess.OnClick;
  Redlist.Add('Image28');
  Redlist.Add('Image29');
  Redlist.Add('Image36');
  Redlist.Add('Image37');
end;

procedure TForm1.FormCreate(Sender: TObject);
Var a,b:integer;
begin
  // ANDROID bug
  {$IFDEF ANDROID}
    for a:= 1 to 8 do
    for b:= 1 to 8 do
    begin
        Timage(FindComponent('image'+intTostr(8*b+a-8))).scale.x := 1;
        Timage(FindComponent('image'+intTostr(8*b+a-8))).scale.y := 1;
    end;
  {$ENDIF}
  randomize;
  Nornaldepth := 3;
  Endgamedepth := 9;
  RedNoMove:=False;
  BlackNoMove:=False;

  for a:= 0 to 9 do
    for b:= 0 to 9 do
      Initboard[a][b]:=0;
  board:=Initboard;
// Delphi XE6 bug ? No directly method
  RedChess.Bitmap := RedChess.MultiResBitmap.items[1].Bitmap;
  BlackChess.Bitmap := BlackChess.MultiResBitmap.items[1].Bitmap;
  ChessBGImage.Bitmap := ChessBGImage.MultiResBitmap.items[1].Bitmap;
  Redlist := TStringList.Create;
  Blacklist := TStringList.Create;
  templist := TStringList.Create;
  InitHumanFirst;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Redlist.Free;
  Blacklist.Free;
  templist.Free;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
  Toolbar1.Visible := Form1.Width < Form1.Height;
end;

procedure TForm1.HumanVsComputerClick(Sender: TObject);
begin
  ComputerVsHuman.IsChecked := Not ComputerVsHuman.IsChecked;
end;

procedure TForm1.Score(const Aboard:Tboard;var RedScore,BlackScore:integer);
var a,b:integer;
begin
  RedScore:=0;
  BlackScore:=0;
  for a:= 1 to 8 do
  begin
    for b:= 1 to 8 do
    begin
      if Aboard[a][b] = 1 then inc(RedScore)
      else if Aboard[a][b] = -1 then inc(BlackScore)
    end;
  end;
end;

procedure TForm1.RedBoardUpdate(var Aboard:Tboard;LastChess:Integer);
var a,b,c,d:integer;
begin
  a:= LastChess;
  c:= a div 8 +1 ;
  b:= a mod 8;
//  if c = 0 then
//    Aboard[b-1][8] := 1
//  else

  if b = 0 then
  begin
    c:=c-1;
    b:=8;
  end;
//  }
  Aboard[b][c] := 1;
  // left

  if c > 2 then
  begin
    if (Aboard[b][c-1] = -1) and (Aboard[b][c-2] <> 0) then
    begin
      d:=1;
      while (Aboard[b][c-d] = -1) do
        inc(d);
      if Aboard[b][c-d] = 1 then
      begin
        for a := 1 to d-1 do
          Aboard[b][c-a] := 1;
      end;
    end;
  end;



  // right test

  if c < 7 then
  begin
    if (Aboard[b][c+1] = -1) and (Aboard[b][c+2] <> 0) then
    begin
      d:=1;
      while (Aboard[b][c+d] = -1) do
        inc(d);
      if Aboard[b][c+d] = 1 then
      begin
        for a := 1 to d-1 do
          Aboard[b][c+a] := 1;
      end;
    end;
  end;



  //top test

  if b > 2 then
  begin
    if (Aboard[b-1][c] = -1) and (Aboard[b-2][c] <> 0) then
    begin
      d:=1;
      while (Aboard[b-d][c] = -1) do
        inc(d);
      if Aboard[b-d][c] = 1 then
      begin
        for a := 1 to d-1 do
          Aboard[b-a][c] := 1;
      end;
    end;
  end;


   // bottom test

  if b < 7 then
  begin
    if (Aboard[b+1][c] = -1) and (Aboard[b+2][c] <> 0) then
    begin
      d:=1;
      while (Aboard[b+d][c] = -1) do
        inc(d);
      if Aboard[b+d][c] = 1 then
      begin
        for a := 1 to d-1 do
          Aboard[b+a][c] := 1;
      end;
    end;
  end;



  // left top test

  if (b-2>0) and (c-2 > 0) then
  begin
    if (Aboard[b-1][c-1] = -1) and (Aboard[b-2][c-2] <> 0) then
    begin
      d:=1;
      while (Aboard[b-d][c-d] = -1) do
        inc(d);
      if Aboard[b-d][c-d] = 1 then
      begin
        for a := 1 to d-1 do
          Aboard[b-a][c-a] := 1;
      end;
    end;
  end;



//   left bottom test

  if (b < 7) and (c > 2) then
  begin
    if (Aboard[b+1][c-1] = -1) and (Aboard[b+2][c-2] <> 0) then
    begin
      d:=1;
      while (Aboard[b+d][c-d] = -1) do
        inc(d);
      if Aboard[b+d][c-d] = 1 then
      begin
        for a := 1 to d-1 do
          Aboard[b+a][c-a] := 1;
      end;
    end;
  end;


  // right bottom test

  if (b < 7) and (c < 7) then
  begin
    if (Aboard[b+1][c+1] = -1) and (Aboard[b+2][c+2] <> 0) then
    begin
      d:=1;
      while (Aboard[b+d][c+d] = -1) do
        inc(d);
      if Aboard[b+d][c+d] = 1 then
      begin
        for a := 1 to d-1 do
          Aboard[b+a][c+a] := 1;
      end;
    end;
  end;



// right top fixed 2 nd

  if (b-2>0) and (c+2<9) then
  begin
    if (Aboard[b-1][c+1] = -1) and (Aboard[b-2][c+2] <> 0) then
    begin
      d:=1;
      while (Aboard[b-d][c+d] = -1) do
        inc(d);
      if Aboard[b-d][c+d] = 1 then
      begin
        for a := 1 to d-1 do
          Aboard[b-a][c+a] := 1;
      end;
    end;
  end;

end;

procedure TForm1.BlackBoardUpdate(var Aboard:Tboard;LastChess:Integer);
// update chess
var a,b,c,d:integer;
begin
  a:=LastChess;
  c:= a div 8 +1 ;
  b:= a mod 8;
//  if c = 0 then
//    Aboard[b-1][8] := -1

  if b = 0 then
  begin
    c:=c-1;
    b:=8;
  end;

//  else
    Aboard[b][c] := -1;
  // left

  if c > 2 then
  begin
    if (Aboard[b][c-1] = 1) and (Aboard[b][c-2] <> 0) then
    begin
      d:=1;
      while (Aboard[b][c-d] = 1) do
        inc(d);
      if Aboard[b][c-d] = -1 then
      begin
        for a := 1 to d-1 do
          Aboard[b][c-a] := -1;
      end;
    end;
  end;



  // right test

  if c < 7 then
  begin
    if (Aboard[b][c+1] = 1) and (Aboard[b][c+2] <> 0) then
    begin
      d:=1;
      while (Aboard[b][c+d] = 1) do
        inc(d);
      if Aboard[b][c+d] = -1 then
      begin
        for a := 1 to d-1 do
          Aboard[b][c+a] := -1;
      end;
    end;
  end;


  //top corrected test

  if b > 2 then
  begin
    if (Aboard[b-1][c] = 1) and (Aboard[b-2][c] <> 0) then
    begin
      d:=1;
      while (Aboard[b-d][c] = 1) do
        inc(d);
      if Aboard[b-d][c] = -1 then
      begin
        for a := 1 to d-1 do
          Aboard[b-a][c] := -1;
      end;
    end;
  end;



   // bottom test

  if b< 7 then
  begin
    if (Aboard[b+1][c] = 1) and (Aboard[b+2][c] <> 0) then
    begin
      d:=1;
      while (Aboard[b+d][c] = 1) do
        inc(d);
      if Aboard[b+d][c] = -1 then
      begin
        for a := 1 to d-1 do
          Aboard[b+a][c] := -1;
      end;
    end;
  end;



  // left top test

  if (b-2>0) and (c-2>0) then
  begin
    if (Aboard[b-1][c-1] = 1) and (Aboard[b-2][c-2] <> 0) then
    begin
      d:=1;
      while (Aboard[b-d][c-d] = 1) do
        inc(d);
      if Aboard[b-d][c-d] = -1 then
      begin
        for a := 1 to d-1 do
          Aboard[b-a][c-a] := -1;
      end;
    end;
  end;


//   left bottom test

  if (b+2<9) and (c-2>0) then
  begin
    if (Aboard[b+1][c-1] = 1) and (Aboard[b+2][c-2] <> 0) then
    begin
      d:=1;
      while (Aboard[b+d][c-d] = 1) do
        inc(d);
      if Aboard[b+d][c-d] = -1 then
      begin
        for a := 1 to d-1 do
          Aboard[b+a][c-a] := -1;
      end;
    end;
  end;


  // right bottom  test

  if (b+2<9) and (c+2<9) then
  begin
    if (Aboard[b+1][c+1] = 1) and (Aboard[b+2][c+2] <> 0) then
    begin
      d:=1;
      while (Aboard[b+d][c+d] = 1) do
        inc(d);
      if Aboard[b+d][c+d] = -1 then
      begin
        for a := 1 to d-1 do
          Aboard[b+a][c+a] := -1;
      end;
    end;
  end;


// right top fixed 2 nd

  if (b-2>0) and (c+2<9) then
  begin
    if (Aboard[b-1][c+1] = 1) and (Aboard[b-2][c+2] <> 0) then
    begin
      d:=1;
      while (Aboard[b-d][c+d] = 1) do
        inc(d);
      if Aboard[b-d][c+d] = -1 then
      begin
        for a := 1 to d-1 do
          Aboard[b-a][c+a] := -1;
      end;
    end;
  end;
end;

procedure TForm1.MakeRedMove(const aBoard:Tboard;var temp:TStringList);
var b,c,d:integer;
Label nextpeace;
begin
 //  aBoard is for ai work
  temp.clear;
  for b:=1 to 8 do
  for c:=1 to 8 do
  begin
    if aboard[b,c] <> 0 then
      goto nextpeace;
    //from left to right
      if c < 7 then if aboard[b][c+1] = -1 then
      begin
        for d:=2 to 7 do
        begin
          if c+d < 9 then
          begin
            if aboard[b][c+d] = 1 then
            begin
                temp.Add(IntTostr(8*c+b-8));
              goto nextpeace;
            end
            else if aboard[b][c+d] <> -1 then break;
          end;
        end;
      end;


    if c > 2  then // from right to left
    begin
      if aboard[b][c-1] = -1 then
      begin
        for d:=2 to 7 do
        begin
          if c-d > 0 then
          begin
            if aboard[b][c-d] = 1 then
            begin
              temp.Add(IntTostr(8*c+b-8));
              goto nextpeace;
            end
            else if aboard[b][c-d] <> -1 then break;
          end;
        end;
      end;
    end;

    if b < 7  then //from top to bottom
    begin
      if aboard[b+1][c] = -1 then
      begin
        for d:= 2 to 7 do
        begin
          if b+d < 9 then
          begin
            if aboard[b+d][c] = 1 then
            begin
              temp.Add(IntTostr(8*c+b-8));
              goto nextpeace;;
            end
            else if aboard[b+d][c] <> -1 then break;
          end;
        end;
      end;
    end;

    if b > 2 then //from bottom to top
    begin
      if aboard[b-1][c] = -1 then
      begin
        for d := 2 to 7 do
        begin
          if b - d > 0 then
          begin
            if aboard[b-d][c] = 1 then
            begin
              temp.Add(IntTostr(8*c+b-8));
              goto nextpeace;;
            end
            else if aboard[b-d][c] <> -1 then break;
          end;
        end;
      end;
    end;

    if (b < 7) and (c < 7) then //from left top and right bottom
    begin
      if aboard[b+1][c+1] = -1 then
      begin
        for d:= 2 to 7 do
        begin
          if (b+d < 9) and (c+d < 9) then
          begin
            if aboard[b+d][c+d] = 1 then
            begin
              temp.Add(IntTostr(8*c+b-8));
              goto nextpeace;;
            end
            else if aboard[b+d][c+d] <> -1 then break;
          end;
        end;
      end;
    end;

    if (b > 2) and (c > 2) then //from right bottom to left top
    begin
      if aboard[b-1][c-1] = -1 then
      begin
        for d:= 2 to 7 do
        begin
          if (b-d > 0) and (c-d > 0) then
          begin
            if aboard[b-d][c-d] = 1 then
            begin
              temp.Add(IntTostr(8*c+b-8));
              goto nextpeace;
            end
            else if aboard[b-d][c-d] <> -1 then break;
          end;
        end;
      end;
    end;

    if (b < 7) and (c > 2) then //from left bottom to right top
    begin
      if aboard[b+1][c-1] = -1 then
      begin
        for d :=2 to 7 do
        begin
          if (b+d < 9) and (c-d > 0) then
          begin
            if aboard[b+d][c-d] = 1 then
            begin
              temp.add(IntTostr(8*c+b-8));
              goto nextpeace;
            end
            else if aboard[b+d][c-d] <> -1 then break;
          end;
        end;
      end;
    end;

    if (b > 2) and (c < 7) then //from right top to left bottom
    begin
      if aboard[b-1][c+1] = -1 then
      begin
        for d :=2 to 7 do
        begin
          if (b-d > 0) and (c+d < 9) then
          begin
            if aboard[b-d][c+d] = 1 then
            begin
              temp.Add(IntTostr(8*c+b-8));
              goto nextpeace;
            end
            else if aboard[b-d][c+d] <> -1 then goto nextpeace;
          end;
        end;
      end;
    end;
    nextpeace:
  end;
end;


procedure TForm1.MakeblackMove(const aBoard:Tboard;var temp:TStringList);
var b,c,d:integer;
Label nextpeace;
begin

// make all unplayed box
  temp.Clear;
  for b:=1 to 8 do
  for c:=1 to 8 do
  begin
    if aboard[b,c] <> 0 then
      Continue;
    //from left to right

      if c < 7 then if aboard[b][c+1] = 1 then
      begin
        for d:=2 to 7 do
        begin
          if c+d < 9 then
          begin
            if aboard[b][c+d] = -1 then
            begin
              temp.Add(IntTostr(8*c+b-8));
              goto nextpeace;;
            end
            else if aboard[b][c+d] <> 1 then break;
          end;
        end;
      end;

    if c > 2 then // from right to left
    begin
      if aboard[b][c-1] = 1 then
      begin
        for d:=2 to 7 do
        begin
          if c-d > 0 then
          begin
            if aboard[b][c-d] = -1 then
            begin
              temp.Add(IntTostr(8*c+b-8));
              goto nextpeace;
            end
            else if aboard[b][c-d] <> 1 then break;
          end;
        end;
      end;
    end;

    if b <7 then //from top to bottom
    begin
      if aboard[b+1][c] = 1 then
      begin
        for d:= 2 to 7 do
        begin
          if b+d < 9 then
          begin
            if aboard[b+d][c] = -1 then
            begin
              temp.Add(IntTostr(8*c+b-8));
              goto nextpeace;
            end
            else if aboard[b+d][c] <> 1 then break;
          end;
        end;
      end;
    end;

    if b > 2 then //from bottom to top
    begin
      if aboard[b-1][c] = 1 then
      begin
        for d := 2 to 7 do
        begin
          if b - d > 0 then
          begin
            if aboard[b-d][c] = -1 then
            begin
              temp.Add(IntTostr(8*c+b-8));
              goto nextpeace;;
            end
            else if aboard[b-d][c] <> 1 then
              break;
          end;
        end;
      end;
    end;

    if (b < 7) and (c < 7) then //from left top and right bottom
    begin
      if aboard[b+1][c+1] = 1 then
      begin
        for d:= 2 to 7 do
        begin
          if (b+d < 9) and (c+d < 9) then
          begin
            if aboard[b+d][c+d] = -1 then
            begin
              temp.Add(IntTostr(8*c+b-8));
              goto nextpeace;
            end
            else if aboard[b+d][c+d] <> 1 then break;
          end;
        end;
      end;
    end;

    if (b > 2) and (c > 2) then //from right bottom to left top
    begin
      if aboard[b-1][c-1] = 1 then
      begin
        for d:= 2 to 7 do
        begin
          if (b-d > 0) and (c-d > 0) then
          begin
            if aboard[b-d][c-d] = -1 then
            begin
              temp.Add(IntTostr(8*c+b-8));
              goto nextpeace;
            end
            else if aboard[b-d][c-d] <> 1 then break;
          end;
        end;
      end;
    end;

    if (b < 7) and (c > 2) then //from left bottom to right top
    begin
      if aboard[b+1][c-1] = 1 then
      begin
        for d :=2 to 7 do
        begin
          if (b+d < 9) and (c-d > 0) then
          begin
            if aboard[b+d][c-d] = -1 then
            begin
              temp.add(IntTostr(8*c+b-8));
              goto nextpeace;
            end
            else if aboard[b+d][c-d] <> 1 then break;
          end;
        end;
      end;
    end;

    if (b > 2) and (c < 7) then //from right top to left bottom
    begin
      if aboard[b-1][c+1] = 1 then
      begin
        for d :=2 to 7 do
        begin
          if (b-d > 0) and (c+d < 9) then
          begin
            if aboard[b-d][c+d] = -1 then
            begin
              temp.Add(IntTostr(8*c+b-8));
              goto nextpeace;
            end
            else if aboard[b-d][c+d] <> 1 then goto nextpeace;
          end;
        end;
      end;
    end;
    nextpeace:
  end;
end;
//end of aimove

procedure TForm1.MakeClick(t:Tstringlist;Player:string);
var a:integer;
begin
  for a:= 0 to t.Count-1 do
    t[a]:='Image'+ t[a];
  redlist.Clear;
  blacklist.Clear;
  if player = 'player1' then
  begin
    for a:= 0 to t.Count-1 do
      redlist.Add(t[a]);
  end
  else begin
    for a:= 0 to t.Count-1 do
      blacklist.Add(t[a]);
  end;
end;

procedure TForm1.Updateboard;
var a,b:integer;
begin
// draw general picture
  for a:= 1 to 8 do
    for b:= 1 to 8 do
    begin
      if board[a,b] = 1 then
        Timage(FindComponent('image'+intTostr(8*b+a-8))).Bitmap := Chess2.Bitmap
      else if board[a,b] = -1 then
        Timage(FindComponent('image'+intTostr(8*b+a-8))).Bitmap := Chess1.Bitmap
      else if board[a,b] = 0 then
        Timage(FindComponent('image'+intTostr(8*b+a-8))).Bitmap := ChessBGImage.Bitmap;
      Timage(FindComponent('image'+intTostr(8*b+a-8))).onclick := nil;
    end;
// draw red picture

//  for a:=0 to movelist.Lines.Count-1 do
  for a:=0 to Redlist.Count-1 do
  begin
    Timage(FindComponent(Redlist[a])).Bitmap := Redchess.Bitmap;
    If HumanVsComputer.IsChecked then
      Timage(FindComponent(Redlist[a])).OnClick := Redchess.onclick;
//    Timage(FindComponent(movelist.Lines[a])).picture := Redchess.picture;
//    Timage(FindComponent(movelist.Lines[a])).OnClick := Redchess.onclick;
  end;
//  for a:=0 to movelist.Lines.Count-1 do
  for a:=0 to Blacklist.Count-1 do
  begin
    Timage(FindComponent(Blacklist[a])).Bitmap := BlackChess.Bitmap;
    If ComputerVsHuman.IsChecked then
      Timage(FindComponent(Blacklist[a])).OnClick := BlackChess.onclick;
//    Timage(FindComponent(Blacklist.Lines[a])).picture := Chess4.picture;
//    Timage(FindComponent(Blacklist.Lines[a])).OnClick := chess4.onclick;
  end;
end;

function TForm1.AI(Aboard:Tboard;ComputerIsRed:Boolean):string;
var a,b,c:integer;thinkstep:string;
begin
  AiListBox.Clear;
  thinkstep:='';
  Application.ProcessMessages;
//  StopThinkButton.Enabled:=True;
// http://blog.csdn.net/nowcan/archive/2004/10/19/142994.aspx
// 其實所有戰術都是減低對方行動力,最後逼對方行死位.
{
  if ComputerIsRed = true then
      MakeRedMove(Aboard,templist)
  else begin
    MakeBlackMove(Aboard,templist);
  end;
  }
  aimovelist :='';
  //aimovelist only output next move and score
  score(Aboard,a,b);
  Realdepth:= Endgamedepth;
//  if a+b + Realdepth then
//    Realdepth:= strToint(Nornaldepth.Text);

  if a+b + Realdepth > 64 then
    Realdepth:= 64-a-b
  else
    Realdepth:= Nornaldepth;
//  ProgressBar1.Max :=0;
//  ProgressBar1.Max:=ThinkNumber(Aboard,ComputerIsRed,Realdepth);
//  ProgressBar1.Step:=1;

  if ComputerIsRed = true then
  begin
      MakeRedMove(Aboard,redlist);
     c:= redlist.Count;
  end
  else begin
    MakeBlackMove(Aboard,blacklist);
    c:= blacklist.Count;
  end;

    // temp disable
//     if (a + b < 46) and  (c > 4) and (Realdepth > 5) then
//   a:=minMaxStart(Aboard,ComputerIsRed,Realdepth,thinkstep)
// else

    a:=minMaxRandom(Aboard,ComputerIsRed,Realdepth,thinkstep);
    // Todo Use another ProgressBar
//  if ProgressBar1.Position < ProgressBar1.Max then
//     ProgressBar1.Position := ProgressBar1.Max;
  if copy(thinkstep,1,1)='-' then
    thinkstep:=Copy(thinkstep,3,length(thinkstep)-2);
  redlist.Clear;
  blacklist.Clear;
  ThinkstepEdit.Text :=thinkstep;
  AIDisplayScoreLabel.text:=intTostr(A);
  {
  for d:=0 to aimovelist.count-1 do
  begin
    a:=strToint(copy(aimovelist[d],1,2));
    b:= a div 8 +1 ;
    c:= a mod 8;
    if c = 0 then
    begin
      b:=b-1;
      c:=8;
    end;
    AiListBox.Items.Add(intTostr(c)+','+intTostr(b)+' '+copy(aimovelist[d],3,length(aimovelist[d])-2));
  end;
  }

  a:=strtoint(trim(copy(aimovelist,1,2)));
//  d:=copy(aimovelist[aimovelist.count-1],3,length(aimovelist[aimovelist.count-1])-2);
//  b := a div 8 + 1;      //4*8+3
//  c := a mod 8;
//  a:= 8*(c-1)+b;

//  Result:='image'+trim(copy(aimovelist[aimovelist.count-1],1,2));
  Result:='image'+ inttostr(a) ;// d;
 // StopThinkButton.Enabled:=False;
 // StopThink:=False;
end;

function TForm1.ThinkNumber(Aboard:Tboard;SideIsRed:Boolean;depth:integer):integer;
var a,b:integer;templist:tstringlist;tempboard:Tboard;
//var a,b,c,bestvalue, value:integer;templist:tstringlist;tempboard:Tboard;sameboard:boolean;
begin
//一般來說，這裡有一個判斷棋局是否結束的函數，
//一旦棋局結束就不必繼續搜索了，直接返回極值。
//但由於黑白棋不存在中途結束的情況，故省略。
  result:=0;
  templist := tstringlist.Create;
  Application.ProcessMessages;
  Score(Aboard,a,b);

  if a = 0 then
  begin
  {
    if SideIsRed then
      result:= 2000
    else
      result:= -2000;
      }
    exit;
  end;
  if b = 0 then
  begin
  {
    if SideIsRed then
      result:= -2000
    else
      result:= 2000;
    exit;
    }
  end;

  if (depth<=0) or (a+b>63) then //葉子節點
  begin
//    result:= EvaluateScore(Aboard,SideIsRed);//直接返回對局面的估值
    exit;
  end;


//    bestvalue:=-INF;//初始最佳值設為負無窮
  //生成走法

  if SideIsRed Then
    MakeRedMove(Aboard,templist)
  else

    MakeBlackMove(Aboard,templist);
  if templist.Count = 0 then
  begin
    if SideIsRed Then
      MakeBlackMove(Aboard,templist)
    else
      MakeRedMove(Aboard,templist);

    if templist.Count = 0 then // both red and black no move
    begin
      templist.Free;

//      result:= EvaluateScore(Aboard,SideIsRed);//直接返回對局面的估值
        result:=1;
      exit;
    end;


//      result := -MinMax(Aboard,Not SideIsRed,depth);//);//搜索子節點，注意前面的負號
      result:=1;
      templist.Free;
      exit;
  end;
  if depth = realdepth-1 then
  begin
    For a:= 0 to templist.Count-1 do
    begin
      Application.ProcessMessages;
      inc(result);
    end;
    templist.Free;
    exit;
  end;
  tempboard:=Aboard;
  For a:= 0 to templist.Count-1 do
  begin
  // 走一步棋;//
  //局面aboard 隨之改變
    Aboard:=tempboard;
    if SideIsRed Then
     RedboardUpdate(Aboard,strToint(templist[a]))
    else
      BlackboardUpdate(aboard,strToint(templist[a]));
    result:=result+ThinkNumber(Aboard,Not SideIsRed,depth-1);
//    value:= -MinMax(Aboard,Not SideIsRed,depth-1);//);//搜索子節點，注意前面的負號
    end;
//      if value > bestvalue then
//        bestvalue:=value;
//    end;
  templist.Free;
//  Result:= bestvalue;
end;

function TForm1.MinMaxRandom(Aboard:Tboard;SideIsRed:Boolean;depth:integer;var aithinkstep:string):integer;
var a,b,c,d,bestvalue, value:integer;templist:tstringlist;tempboard:Tboard;oldaithinkstep:string;aithinksteplist:Tstringlist;//var a,b,c,bestvalue, value:integer;templist:tstringlist;tempboard:Tboard;sameboard:boolean;
begin
//一般來說，這裡有一個判斷棋局是否結束的函數，
//一旦棋局結束就不必繼續搜索了，直接返回極值。
//但由於黑白棋不存在中途結束的情況，故省略。
  Application.ProcessMessages;
//  bestaithinkstep:=aithinkstep;
  Score(Aboard,a,b);
  if a = 0 then
  begin
    if SideIsRed then
      result:= 2000
    else
      result:= -2000;
    exit;
  end;
  if b = 0 then
  begin
    if SideIsRed then
      result:= -2000
    else
      result:= 2000;
    exit;
  end;
  if (depth<=0) or (a+b>63) then //葉子節點
  begin
      result:= EvaluateScore(Aboard,SideIsRed);//直接返回對局面的估值
    exit;
  end;
    templist := Tstringlist.Create;
//  if SideIsRed then
    bestvalue:=-INF;//初始最佳值設為負無窮
//  else
//    bestvalue:=INF;
  //生成走法
//  templist:=tstringlist.Create;
  if SideIsRed Then
//    templist:=MakeRedMoveAI(Aboard)
    MakeRedMove(Aboard,templist)
  else
//    templist:=MakeBlackMoveAI(Aboard);
    MakeBlackMove(Aboard,templist);
  if templist.Count = 0 then
  begin
    if SideIsRed Then
      MakeBlackMove(Aboard,templist)
    else
      MakeRedMove(Aboard,templist);

    if templist.Count = 0 then // both red and black no move
    begin
      templist.Free;
//      result:=0;
        result:= EvaluateScore(Aboard,SideIsRed);//直接返回對局面的估值
      exit;
    end;
    result := -MinMax(Aboard,Not SideIsRed,depth,aithinkstep);//);//搜索子節點，注意前面的負號
//    if a+ b < 40 then
//      result := result + 100;
    templist.Free;
    exit;
  end;
  aithinksteplist := Tstringlist.Create;
  tempboard:=Aboard;
  oldaithinkstep :=aithinkstep;
  For a:= 0 to templist.Count-1 do
  begin
    Application.ProcessMessages;
    aithinkstep := oldaithinkstep;
      d:= strtoint(templist[a]);
      b:= d div 8 +1 ;
      c:= d mod 8;
      if c = 0 then
       begin
      b:=b-1;
      c:=8;
       end;
    aithinkstep := intTostr(c)+','+intTostr(b);
  // 走一步棋;//
  //局面aboard 隨之改變
    Aboard:=tempboard;
    if SideIsRed Then
     RedboardUpdate(Aboard,strToint(templist[a]))
    else
      BlackboardUpdate(aboard,strToint(templist[a]));
    value:= -MinMax(Aboard,Not SideIsRed,depth-1,aithinkstep);//);//搜索子節點，注意前面的負號

//    if depth = Realdepth-1 then
//      ProgressBar1.StepIt;

//    if depth = Realdepth then
//    begin
      d:= strtoint(templist[a]);
      b:= d div 8 +1 ;
      c:= d mod 8;
      if c = 0 then
       begin
      b:=b-1;
      c:=8;
       end;

      AiListBox.items.Add(intTostr(c)+','+intTostr(b)+' '+intTostr(value));
      if value = bestvalue then
        aithinksteplist.Add(aithinkstep)
      else if value > bestvalue then
      begin
        aimovelist:=templist[a]+' '+intTostr(value);
//    end;
//      if value > bestvalue then
//      begin
        bestvalue:=value;
//        bestaithinkstep := aithinkstep;
        aithinksteplist.Clear;
        aithinksteplist.Add(aithinkstep)
      end;
    end;
  b:=Random(aithinksteplist.Count);
  AiMovelist := inttostr(8*strtoint(copy(aithinksteplist[b],3,1))+strtoint(copy(aithinksteplist[b],1,1))-8) + ' '+inttostr(bestvalue);
  aithinkstep := aithinksteplist[b];
  templist.Free;
//  aithinkstep :=bestaithinkstep;
  Result:= bestvalue;
  aithinksteplist.Free;
end;

function Tform1.EvaluateScore(const Aboard:Tboard;const SideIsRed:Boolean):Integer;
var a,b:integer;
begin
  Score(Aboard,a,b);
  if a+b < 59 then begin
    if aboard[1][1] = 0 then
      Result:= b-a+aboard[2][1]*posmark[2][1]+aboard[1][2]*posmark[1][2]
    else
      Result:= b-a+aboard[1][1]*posmark[1][1];
    if aboard[8][1] = 0 then
      Result:= Result+aboard[7][1]*posmark[7][1]+aboard[8][2]*posmark[8][2]
    else
      Result:= Result+aboard[8][1]*posmark[8][1];
    if aboard[1][8] = 0 then
      Result:= Result+aboard[1][7]*posmark[1][7]+aboard[2][8]*posmark[2][8]
    else
      Result:= Result+aboard[1][8]*posmark[1][8];
    if aboard[8][8] = 0 then
      Result:= Result+aboard[8][7]*posmark[8][7]+aboard[7][8]*posmark[7][8]
    else
      Result:= Result+aboard[8][8]*posmark[8][8];

    if  not SideIsRed then
      Result:= -Result;

//    if SideIsRed then
//      Result:= EvaluateScoreA(Aboard,SideIsRed,redposmark)
//    else
     // Result:= EvaluateScoreA(Aboard,SideIsRed,realposmark);
//   Result := a-b-(posmark[1][1]*Aboard[1][1]+posmark[2][1]*Aboard[2][1]+posmark[7][1]*Aboard[7][1]+posmark[8][1]*Aboard[8][1]+posmark[1][2]*Aboard[1][2]+posmark[8][2]*Aboard[8][2]+posmark[1][7]*Aboard[1][7]+posmark[8][7]*Aboard[8][7]+posmark[1][8]*Aboard[1][8]+posmark[7][8]*Aboard[7][8]+posmark[8][8]*Aboard[8][8]);
 //   Result := a-b;
    // testng
//   if SideIsRed then
//     Result:= -Result;
  end
 else begin
    if SideIsRed then
    Result := b-a
  else
    Result := a-b;
 end;
end;

function TForm1.MinMax(Aboard:Tboard;SideIsRed:Boolean;depth:integer;var aithinkstep:string):integer;
var a,b,c,d,bestvalue, value:integer;templist:tstringlist;tempboard:Tboard;oldaithinkstep,bestaithinkstep:string;
//var a,b,c,bestvalue, value:integer;templist:tstringlist;tempboard:Tboard;sameboard:boolean;
begin
//一般來說，這裡有一個判斷棋局是否結束的函數，
//一旦棋局結束就不必繼續搜索了，直接返回極值。
//但由於黑白棋不存在中途結束的情況，故省略。
  Application.ProcessMessages;
  bestaithinkstep:=aithinkstep;
  Score(Aboard,a,b);
  if a = 0 then
  begin
    if SideIsRed then
      result:= 2000
    else
      result:= -2000;
    exit;
  end;
  if b = 0 then
  begin
    if SideIsRed then
      result:= -2000
    else
      result:= 2000;
    exit;
  end;
  if (depth<=0) or (a+b>63) then //or StopThink then //葉子節點
  begin
    result:= EvaluateScore(Aboard,SideIsRed);//直接返回對局面的估值
    exit;
  end;
    templist := Tstringlist.Create;
//  if SideIsRed then
    bestvalue:=-INF;//初始最佳值設為負無窮
//  else
//    bestvalue:=INF;
  //生成走法
//  templist:=tstringlist.Create;
  if SideIsRed Then
//    templist:=MakeRedMoveAI(Aboard)
    MakeRedMove(Aboard,templist)
  else
//    templist:=MakeBlackMoveAI(Aboard);
    MakeBlackMove(Aboard,templist);
  if templist.Count = 0 then
  begin
    if SideIsRed Then
      MakeBlackMove(Aboard,templist)
    else
      MakeRedMove(Aboard,templist);
    if templist.Count = 0 then // both red and black no move
    begin
      templist.Free;
//      result:=0;
      result:= EvaluateScore(Aboard,SideIsRed);//直接返回對局面的估值
      exit;
    end;
    aithinkstep := aithinkstep +'->PASS';
    result := -MinMax(Aboard,Not SideIsRed,depth,aithinkstep);//);//搜索子節點，注意前面的負號
//    if a+ b < 40 then
//      result := result + 100;
    templist.Free;
    exit;
  end;
  tempboard:=Aboard;
  oldaithinkstep :=aithinkstep;
  For a:= 0 to templist.Count-1 do
  begin
    Application.ProcessMessages;
    aithinkstep := oldaithinkstep;
      d:= strtoint(templist[a]);
      b:= d div 8 +1 ;
      c:= d mod 8;
      if c = 0 then
       begin
      b:=b-1;
      c:=8;
       end;
    aithinkstep := aithinkstep+'->'+intTostr(c)+','+intTostr(b);
  // 走一步棋;//
  //局面aboard 隨之改變
    Aboard:=tempboard;
    if SideIsRed Then
     RedboardUpdate(Aboard,strToint(templist[a]))
    else
      BlackboardUpdate(aboard,strToint(templist[a]));
    value:= -MinMax(Aboard,Not SideIsRed,depth-1,aithinkstep);//);//搜索子節點，注意前面的負號

//    if depth = Realdepth-1 then
//      ProgressBar1.StepIt;

      if value > bestvalue then
      begin
        bestvalue:=value;
        bestaithinkstep := aithinkstep;
      end;
    end;
  templist.Free;
  aithinkstep :=bestaithinkstep;
  Result:= bestvalue;
end;

end.
