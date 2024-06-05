unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm3 = class(TForm)
    dbgrd1: TDBGrid;
    edt1: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    Label1: TLabel;
    lbl1: TLabel;
    edt2: TEdit;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule4.zkategori.SQL.Clear;
DataModule4.zkategori.SQL.Add('insert into kategori values (null,"'+edt1.text+'")');
DataModule4.zkategori.ExecSQL;

DataModule4.zkategori.SQL.Clear;
DataModule4.zkategori.SQL.Add('select * from kategori');
DataModule4.zkategori.Open;
ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm3.btn2Click(Sender: TObject);
begin

DataModule4.zkategori.SQL.Clear;
DataModule4.zkategori.SQL.Add('select * from kategori where name like "%' + edt2.Text + '%"');
DataModule4.zkategori.Open;
ShowMessage('Data Berhasil Di Update');
end;


procedure TForm3.btn3Click(Sender: TObject);
begin
DataModule4.zkategori.SQL.Clear;
DataModule4.zkategori.SQL.Add('delete from kategori where id= "'+a+'"');
DataModule4.zkategori.ExecSQL;

DataModule4.zkategori.SQL.Clear;
DataModule4.zkategori.SQL.Add('select * from kategori');
DataModule4.zkategori.Open;
ShowMessage('Data Berhasil di Update!');

end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
edt1.Text:= DataModule4.zkategori.Fields[1].AsString;
a := DataModule4.zkategori.Fields[0].AsString;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin

DataModule4.zkategori.SQL.Clear;
DataModule4.zkategori.SQL.Add('select * from kategori where name like "%' + edt2.Text + '%"');
DataModule4.zkategori.Open;

end;

end.
