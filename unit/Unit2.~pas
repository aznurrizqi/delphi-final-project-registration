unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Kode: TEdit;
    Nama_barang: TEdit;
    Satuan: TComboBox;
    QTY: TEdit;
    BELI: TEdit;
    JUAL: TEdit;
    Save: TBitBtn;
    Exit: TBitBtn;
    procedure ExitClick(Sender: TObject);
    procedure KodeKeyPress(Sender: TObject; var Key: Char);
    procedure Nama_barangKeyPress(Sender: TObject; var Key: Char);
    procedure SatuanKeyPress(Sender: TObject; var Key: Char);
    procedure QTYKeyPress(Sender: TObject; var Key: Char);
    procedure BELIKeyPress(Sender: TObject; var Key: Char);
    procedure JUALKeyPress(Sender: TObject; var Key: Char);
    procedure SaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.ExitClick(Sender: TObject);
begin
Close;
end;

procedure TForm2.KodeKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
nama_barang.SetFocus;
end;

procedure TForm2.Nama_barangKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
satuan.SetFocus;
end;

procedure TForm2.SatuanKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
qty.SetFocus;
end;

procedure TForm2.QTYKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
beli.SetFocus;
If Not (Key in['0'..'9','.',#8]) then
Key:=#0;
end;

procedure TForm2.BELIKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
Jual.SetFocus;
If Not (Key in['0'..'9','.',#8]) then
Key:=#0;
end;

procedure TForm2.JUALKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
Save.SetFocus;
If Not (Key in['0'..'9','.',#8]) then
Key:=#0;
end;

procedure TForm2.SaveClick(Sender: TObject);
begin
Try
If (nama_barang.Text='') or (Satuan.Text='') or (Qty.Text='') or (Beli.Text='') or (Jual.Text='')Then
Begin
Messagedlg('Tidak Boleh Ada Data Yang Kosong!',mtError,[mbOK],0);
Nama_barang.SetFocus;
end
else
begin
  //Untuk Mencari Kode Barang Apakah Sudah Ada Atau Belum, Kalau tidak Ada Data Akan Disimpan
  If Not Form1.ADOQuery1.Locate('kd_barang',kode.Text,[]) Then
  Begin
    With Form1.ADOQuery1 do
      begin
      SQL.TEXT:='INSERT INTO tb_barang VALUES('+''''+ Kode.Text +''''+','+''''+ nama_barang.Text +''''+','+''''+ satuan.Text +''''+','+''''+ qty.Text +''''+','+''''+ Beli.Text +''''+','+''''+ Jual.Text +''''+')';
      ExecSQL;
      Form2.Close;
      Messagedlg('Proses Penyimpanan Data Berhasil',mtInformation,[mbOK],0);
      end;
  end
  else
  begin
    With Form1.ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE tb_barang SET nama_barang="'+ nama_barang.Text +'", satuan="'+ satuan.Text +'", qty="'+ qty.Text +'", harga_beli="'+ beli.Text +'", harga_jual="'+ Jual.Text +'" Where kd_barang="'+ Kode.Text +'"');
        ExecSQL;
      Form2.Close;
      Messagedlg('Proses Perubahan Data Berhasil',mtInformation,[mbOK],0);
      end;
  end;
end;
Except
  Messagedlg('Terjadi Kesalahan Dalam Proses Input dan Atau Update Data',mtError,[mbOK],0);
end;
end;

end.
