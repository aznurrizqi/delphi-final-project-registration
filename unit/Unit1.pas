unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ExtCtrls, StdCtrls, XPMan, Buttons, ComCtrls,
  OleCtrls, Crystal_TLB;

type
  TForm1 = class(TForm)
    ADOQuery1: TADOQuery;
    Panel1: TPanel;
    TbTubes: TListView;
    ADOConnection1: TADOConnection;
    lbl_cari: TLabel;
    Cari: TEdit;
    Refresh: TBitBtn;
    Delete: TBitBtn;
    Exit: TBitBtn;
    Edit: TBitBtn;
    Add: TBitBtn;
    lbl_id: TLabel;
    lbl_judul: TLabel;
    lbl_platform: TLabel;
    lbl_nim: TLabel;
    lbl_nama: TLabel;
    lbl_kelas: TLabel;
    lbl_semester: TLabel;
    lbl_makul: TLabel;
    lbl_dosen: TLabel;
    id: TEdit;
    judul: TEdit;
    platform: TEdit;
    nim: TEdit;
    nama: TEdit;
    kelas: TEdit;
    semester: TEdit;
    makul: TEdit;
    dosen: TEdit;
    Save: TBitBtn;
    Report: TBitBtn;
    CrystalReport1: TCrystalReport;
    Clear: TBitBtn;
    procedure ExitClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CariChange(Sender: TObject);
    procedure DeleteClick(Sender: TObject);
    procedure AddClick(Sender: TObject);
    procedure RefreshClick(Sender: TObject);
    procedure EditClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure ReportClick(Sender: TObject);
    procedure ClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.ExitClick(Sender: TObject);
begin
Close;
end;

procedure TForm1.FormActivate(Sender: TObject);
var
 dt:TListItem;
 no:integer;
begin
no:=0;
With ADOQuery1 do
Begin
   Close;
   SQL.Clear;
   SQL.Add('SELECT * FROM TbTubes');
   open;
   TbTubes.Clear;
   if Not isEmpty then
   begin
     while not eof do
     begin
     inc(no);
     dt:=TbTubes.Items.Add;
     dt.Caption:=IntToStr(no);
     dt.SubItems.Add(FieldValues['idtubes']);
     dt.SubItems.Add(FieldValues['judultubes']);
     dt.SubItems.Add(FieldValues['platform']);
     dt.SubItems.Add(FieldValues['nim']);
     dt.SubItems.Add(FieldValues['namamahasiswa']);
     dt.SubItems.Add(FieldValues['kelas']);
     dt.SubItems.Add(FieldValues['semester']);
     dt.SubItems.Add(FieldValues['matakuliah']);
     dt.SubItems.Add(FieldValues['dosen']);
     next;
     end;
   end;
end;
end;

procedure TForm1.CariChange(Sender: TObject);
var dt : TlistItem;
    no : integer;
begin
no :=0;
With ADOQuery1 do Begin
Close;
SQL.Clear;
SQL.Add('select * from TbTubes Where judultubes like "%' + cari.Text + '%"');
open;
   TbTubes.Clear;
   if Not isEmpty then
   begin
     while not eof do
     begin
     inc(no);
     dt:=TbTubes.Items.Add;
     dt.Caption:=IntToStr(no);
     dt.SubItems.Add(FieldValues['idtubes']);
     dt.SubItems.Add(FieldValues['judultubes']);
     dt.SubItems.Add(FieldValues['platform']);
     dt.SubItems.Add(FieldValues['nim']);
     dt.SubItems.Add(FieldValues['namamahasiswa']);
     dt.SubItems.Add(FieldValues['kelas']);
     dt.SubItems.Add(FieldValues['semester']);
     dt.SubItems.Add(FieldValues['matakuliah']);
     dt.SubItems.Add(FieldValues['dosen']);
     next;
      end;
  end;
end;
end;

procedure TForm1.DeleteClick(Sender: TObject);
var
 dt:TListItem;
 no:integer;
begin
 try
   TbTubes.Selected.Index;
   with ADOQuery1 do
    begin
     Close;
     SQL.Text:='DELETE FROM TbTubes WHERE idtubes='+''''+TbTubes.Selected.SubItems.Strings[0]+'''';
     if MessageDlg('Anda yakin akan menghapus data '+TbTubes.Selected.SubItems.Strings[1]+'?',mtConfirmation,[mbYES,mbNO],0)=id_YES then
        begin
          ExecSQL;
          no:=0;
          With ADOQuery1 do
          Begin
         Close;
         SQL.Clear;
         SQL.Add('SELECT * FROM TbTubes');
         open;

         //Menampilkan Data Dalam Listview
           TbTubes.Clear;
           if Not isEmpty then
           begin
             while not eof do
             begin
             inc(no);
             dt:=TbTubes.Items.Add;
             dt.Caption:=IntToStr(no);
             dt.SubItems.Add(FieldValues['idtubes']);
             dt.SubItems.Add(FieldValues['judultubes']);
             dt.SubItems.Add(FieldValues['platform']);
             dt.SubItems.Add(FieldValues['nim']);
             dt.SubItems.Add(FieldValues['namamahasiswa']);
             dt.SubItems.Add(FieldValues['kelas']);
             dt.SubItems.Add(FieldValues['semester']);
             dt.SubItems.Add(FieldValues['matakuliah']);
             dt.SubItems.Add(FieldValues['dosen']);
             next;
             end;
          end;
        end;
     end;
    end;
 except
   MessageDlg('Tidak ada data yang dipilih !',mtInformation,[mbOK],0);
 end;
end;

procedure TForm1.AddClick(Sender: TObject);
Var
  Ret:String;
  GID:Integer;
begin
Ret:='';
with ADOQuery1 do
begin
  Close;
  SQL.Clear;
  SQL.Add('SELECT * FROM TbTubes');
  Open;

  if (Fields.FieldByName('idtubes').IsNull)or(IsEmpty) then
      ret:='T'+'0001'
  else
    begin
  GID:=ADOQuery1.RecordCount+1;
  if (GID>=0)and(GID<10)then
      ret:='T'+'000'+IntTostr(GID)
  else if(GID>9)and(GID<100)then
      ret:='T'+'00'+IntToStr(GID)
  else if (GID>99)and(GID<1000)then
      ret:='T'+'0'+IntTostr(GID)
  else if (GID>999)and(GID<10000)then
      ret:='T'+''+IntToStr(GID)
  end;
  id.Text:=ret;
end;
id.Enabled:=True;
judul.Enabled:=True;
judul.setfocus;
platform.Enabled:=True;
nim.Enabled:=True;
nama.Enabled:=True;
kelas.Enabled:=True;
semester.Enabled:=True;
makul.Enabled:=True;
dosen.Enabled:=True;
Save.Enabled:=True;
end;

procedure TForm1.RefreshClick(Sender: TObject);
var
 dt:TListItem;
 no:integer;
begin
no:=0;
With ADOQuery1 do
Begin
   Close;
   SQL.Clear;
   SQL.Add('SELECT * FROM TbTubes');
   open;

   //Menampilkan Data Dalam Listview
   TbTubes.Clear;
   if Not isEmpty then
   begin
     while not eof do
     begin
     inc(no);
     dt:=TbTubes.Items.Add;
     dt.Caption:=IntToStr(no);
     dt.SubItems.Add(FieldValues['idtubes']);
     dt.SubItems.Add(FieldValues['judultubes']);
     dt.SubItems.Add(FieldValues['platform']);
     dt.SubItems.Add(FieldValues['nim']);
     dt.SubItems.Add(FieldValues['namamahasiswa']);
     dt.SubItems.Add(FieldValues['kelas']);
     dt.SubItems.Add(FieldValues['semester']);
     dt.SubItems.Add(FieldValues['matakuliah']);
     dt.SubItems.Add(FieldValues['dosen']);
     next;
     end;
   end;
end;

end;

procedure TForm1.EditClick(Sender: TObject);
begin
id.Enabled:=True;
judul.Enabled:=True;
judul.setfocus;
platform.Enabled:=True;
nim.Enabled:=True;
nama.Enabled:=True;
kelas.Enabled:=True;
semester.Enabled:=True;
makul.Enabled:=True;
dosen.Enabled:=True;
Save.Enabled:=True;
try
 with TbTubes.Selected do
 begin
  Index;
  id.Text:=SubItems.Strings[0];
  judul.Text:=SubItems.Strings[1];
  platform.Text:=SubItems.Strings[2];
  nim.Text:=SubItems.Strings[3];
  nama.Text:=SubItems.Strings[4];
  kelas.Text:=SubItems.Strings[5];
  semester.Text:=SubItems.Strings[6];
  makul.Text:=SubItems.Strings[7];
  dosen.Text:=SubItems.Strings[8];
 end;
except
 MessageDlg('Tidak ada data yang dipilih !',mtInformation,[mbOK],0);
end;
end;

procedure TForm1.SaveClick(Sender: TObject);
begin
Try
If (judul.Text='') or (nim.Text='') or (nama.Text='') or (kelas.Text='') or (semester.Text='') or (makul.Text='') or (dosen.Text='')Then
Begin
Messagedlg('Semua data harus diisi !',mtError,[mbOK],0);
judul.SetFocus;
end
else
begin
  //Untuk Mencari Kode Barang Apakah Sudah Ada Atau Belum, Kalau tidak Ada Data Akan Disimpan
  If Not ADOQuery1.Locate('idtubes',id.Text,[]) Then
  Begin
    With ADOQuery1 do
      begin
      SQL.TEXT:='INSERT INTO TbTubes VALUES('+''''+ id.Text +''''+','+''''+ judul.Text +''''+','+''''+ platform.Text +''''+','+''''+ nim.Text +''''+','+''''+ nama.Text +''''+','+''''+ kelas.Text +''''+','+''''+ semester.Text +''''+','+''''+ makul.Text +''''+','+''''+ dosen.Text +''''+')';
      ExecSQL;
      Messagedlg('Proses simpan data sukses !',mtInformation,[mbOK],0);
      end;
  end
  else
  begin
    With ADOQuery1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add('UPDATE TbTubes SET idtubes="'+ id.Text +'", judultubes="'+ judul.Text +'", platform="'+ platform.Text +'", nim="'+ nim.Text +'", namamahasiswa="'+ nama.Text +'", kelas="'+ kelas.Text +'", semester="'+ semester.Text +'", matakuliah="'+ makul.Text +'", dosen="'+ dosen.Text +'" Where judultubes="'+ judul.Text +'"');
        ExecSQL;
      Messagedlg('Proses update data sukses !',mtInformation,[mbOK],0);
      end;
  end;
id.Text:='';
judul.Text:='';
platform.Text:='';
nim.Text:='';
nama.Text:='';
kelas.Text:='';
semester.Text:='';
makul.Text:='';
dosen.Text:='';
end;
Except
  Messagedlg('Terjadi kesalahan dalam proses input atau update !',mtError,[mbOK],0);
end;
end;

procedure TForm1.ReportClick(Sender: TObject);
begin
CrystalReport1.Connect:='Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=db_pemvis.mdb;';
CrystalReport1.ReportFileName:='Report1.rpt';
CrystalReport1.Action:=1;
end;

procedure TForm1.ClearClick(Sender: TObject);
begin
id.Text:='';
judul.Text:='';
platform.Text:='';
nim.Text:='';
nama.Text:='';
kelas.Text:='';
semester.Text:='';
makul.Text:='';
dosen.Text:='';
end;

end.
