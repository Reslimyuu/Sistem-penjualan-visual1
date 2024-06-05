unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm5 = class(TForm)
    edt1: TEdit;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    edt2: TEdit;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  Unit4;
  a : string;

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
DataModule4.zsatuan.SQL.Clear;
DataModule4.zsatuan.SQL.Add('insert into satuan values (null,"'+edt1.text+'")');
DataModule4.zsatuan.ExecSQL;

DataModule4.zsatuan.SQL.Clear;
DataModule4.zsatuan.SQL.Add('select * from satuan');
DataModule4.zsatuan.Open;
ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
DataModule4.zsatuan.SQL.Clear;
DataModule4.zsatuan.SQL.Add('update satuan set name="'+edt1.Text+'" where id= "'+a+'"');
DataModule4.zsatuan.ExecSQL;

DataModule4.zsatuan.SQL.Clear;
DataModule4.zsatuan.SQL.Add('select * from satuan');
DataModule4.zsatuan.Open;
ShowMessage('Data Berhasil Di Update');
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
DataModule4.zsatuan.SQL.Clear;
DataModule4.zsatuan.SQL.Add('delete from satuan where id= "'+a+'"');
DataModule4.zsatuan.ExecSQL;

DataModule4.zsatuan.SQL.Clear;
DataModule4.zsatuan.SQL.Add('select * from satuan');
DataModule4.zsatuan.Open;
ShowMessage('Data Berhasil di Update!');
end;

procedure TForm5.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule4.zsatuan.Fields[1].AsString;
a := DataModule4.zsatuan.Fields[0].AsString;
end;

end.
