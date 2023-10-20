unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    sortPanel3: TPanel;
    sortPanel2: TPanel;
    sortPanel: TPanel;
    sortButton: TButton;
    resetButton: TToggleBox;
    procedure FormCreate(Sender: TObject);
    procedure resetButtonChange(Sender: TObject);
    procedure sortButtonClick(Sender: TObject);
    procedure sortLabelClick(Sender: TObject);
    procedure sortPanelClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  aleatorio: Integer;
  contador: Integer=1;
  sortPanelValue: Integer;
  sortPanel2Value: Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.sortButtonClick(Sender: TObject);
begin
  randomize;
  aleatorio:=Random(12);

  case contador of
  1: begin
       sortPanelValue:=aleatorio;
       sortPanel.Caption:=IntToStr(aleatorio);
       contador:=contador+1;
       sortButton.Caption:='Sorter de novo';

       case aleatorio of
       0: begin
             sortPanel.Caption:='A';
          end;
       10: begin
             sortPanel.Caption:='J';
           end;
       11: begin
             sortPanel.Caption:='Q';
           end;
       12: begin
             sortPanel.Caption:='K';
           end;
         end;
     end;
  2: begin
       sortPanel2.Caption:=IntToStr(aleatorio);
       sortPanel2Value:=aleatorio;
       contador:=contador+1;
       sortButton.Caption:='Mostrar resulados';

       case aleatorio of
       0: begin
             sortPanel2.Caption:='A';
          end;
       10: begin
             sortPanel2.Caption:='J';
           end;
       11: begin
             sortPanel2.Caption:='Q';
           end;
       12: begin
             sortPanel2.Caption:='K';
           end;
      end;
     end;
  3: begin
       contador:=contador+1;

       sortPanel3.Caption:='Seus resultados foram ' + sortPanel.Caption + ' e ' + sortPanel2.Caption + ', e a soma deles é ' + IntToStr(sortPanelValue + sortPanel2Value);
     end;
  end;
end;

procedure TForm1.sortLabelClick(Sender: TObject);
begin

end;

procedure TForm1.sortPanelClick(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.resetButtonChange(Sender: TObject);
begin
  sortPanel.Caption:='?';
  sortPanel2.Caption:='?';
  sortPanel3.Caption:='';
  contador:=1;
end;

end.

