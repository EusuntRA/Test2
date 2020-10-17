//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UCautare.h"
#include "Udm.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFCautare *FCautare;
//---------------------------------------------------------------------------
__fastcall TFCautare::TFCautare(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFCautare::CheckBox1Click(TObject *Sender)
{
 if(CheckBox1->Checked==true)
 {
   Edit1->Enabled=true;
   Edit8->Enabled=true;
 }
 else
  {
   Edit1->Enabled=false;
   Edit8->Enabled=false;
 }
 Edit1->Clear(); Edit8->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TFCautare::CheckBox2Click(TObject *Sender)
{
 if(CheckBox2->Checked==true)
 {
   DateTimePicker1->Enabled=true;
   DateTimePicker2->Enabled=true;
 }
 else
  {
   DateTimePicker1->Enabled=false;
   DateTimePicker2->Enabled=false;
 }

}
//---------------------------------------------------------------------------
void __fastcall TFCautare::CheckBox3Click(TObject *Sender)
{
 if(CheckBox3->Checked==true)
 {
   Edit2->Enabled=true;
 }
 else
  {
   Edit2->Enabled=false;
 }
 Edit2->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TFCautare::CheckBox4Click(TObject *Sender)
{
 if(CheckBox4->Checked==true)
 {
   Edit3->Enabled=true;
 }
 else
  {
   Edit3->Enabled=false;
 }
 Edit3->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TFCautare::CheckBox5Click(TObject *Sender)
{
 if(CheckBox5->Checked==true)
 {
   Edit4->Enabled=true;
 }
 else
  {
   Edit4->Enabled=false;
 }
 Edit4->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TFCautare::CheckBox6Click(TObject *Sender)
{
 if(CheckBox6->Checked==true)
 {
   Edit5->Enabled=true;
 }
 else
  {
   Edit5->Enabled=false;
 }
 Edit5->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TFCautare::CheckBox7Click(TObject *Sender)
{
 if(CheckBox7->Checked==true)
 {
   Edit6->Enabled=true;
 }
 else
  {
   Edit6->Enabled=false;
 }
 Edit6->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TFCautare::CheckBox8Click(TObject *Sender)
{
 if(CheckBox8->Checked==true)
 {
   Edit7->Enabled=true;
 }
 else
  {
   Edit7->Enabled=false;
 }
 Edit7->Clear();
}
//---------------------------------------------------------------------------
void __fastcall TFCautare::SpeedButton1Click(TObject *Sender)
{
AnsiString s;
s=" SELECT  ROW_NUMBER() OVER(ORDER BY vanzare_id ASC) as nr, ";
s=s+" V.*,C.NUME+' '+C.PRENUME AS NUMCL,C.COD_CLIENT, R.STOCK2,R.PRET_VANZ,P.DENUMIRE AS PRODUS, ";
s=s+" P.COD_PRODUS,CEC.NR_CEC,CEC.DATA_CEC,D.VALOAREA AS DISCOUNT, ";
s=s+" V.CANTITATEA*R.PRET_VANZ AS SUMACALC,O.NUME+' '+O.PRENUME AS NUMOP ";
s=s+" FROM VANZARE V INNER JOIN RECEPTIE R ON V.RECEPTIE_ID=R.RECEPTIE_ID ";
s=s+" INNER JOIN PRODUSE P ON P.PRODUSE_ID=R.PRODUSE_ID ";
s=s+" INNER JOIN CEC ON CEC.CEC_ID=V.CEC_ID ";
s=s+" INNER JOIN CLIENT C ON C.CLIENT_ID=CEC.CLIENT_ID ";
s=s+" INNER JOIN DISCOUNT D ON D.DISCOUNT_ID=C.DISCOUNT_ID ";
s=s+" INNER JOIN OPERATOR O ON O.OPERATOR_ID=CEC.OPERATOR_ID ";

 if((CheckBox1->Checked==true)&&(Edit1->Text!="")&&(Edit8->Text!=""))
 {
  s=s+" and CEC.NR_CEC between :n1 and :n2 ";
 }

 if(CheckBox2->Checked==true)
 {
  s=s+" and CEC.DATA_CEC between :d1 and :d2 ";
 }

 if((CheckBox3->Checked==true)&&(Edit2->Text!=""))
 {
  s=s+" and O.NUME+' '+O.PRENUME like '"+Edit2->Text+"%' ";
 }

  if((CheckBox4->Checked==true)&&(Edit3->Text!=""))
 {
  s=s+" and C.NUME+' '+C.PRENUME like '"+Edit3->Text+"%' ";
 }

 if((CheckBox5->Checked==true)&&(Edit4->Text!=""))
 {
  s=s+" AND C.COD_CLIENT= '"+Edit4->Text+"' ";
 }

  if((CheckBox6->Checked==true)&&(Edit5->Text!=""))
 {
  s=s+" AND P.DENUMIRE LIKE '"+Edit5->Text+"%' ";
 }

 if((CheckBox7->Checked==true)&&(Edit6->Text!=""))
 {
  s=s+" AND P.COD_PRODUS= '"+Edit6->Text+"' ";
 }

  if((CheckBox8->Checked==true)&&(Edit7->Text!="")&&(Edit7->Text.ToDouble()>=0))
 {
  s=s+" AND V.SUMA_TOTAL="+Edit7->Text.ToDouble();
 }

 dm->QCauta->Close();
 dm->QCauta->SQL->Clear();
 dm->QCauta->SQL->Add(s);

  if((CheckBox1->Checked==true)&&(Edit1->Text!="")&&(Edit8->Text!=""))
  {
	  dm->QCauta->ParamByName("n1")->AsInteger=Edit1->Text.ToInt();
	  dm->QCauta->ParamByName("n2")->AsInteger=Edit8->Text.ToInt();
  }

 if(CheckBox2->Checked==true)
  {
	  dm->QCauta->ParamByName("d1")->AsDate=DateTimePicker1->Date;
	  dm->QCauta->ParamByName("d2")->AsDate=DateTimePicker2->Date;
  }
 dm->QCauta->Open();
 Label2->Caption=IntToStr(dm->QCauta->RecordCount);
}
//---------------------------------------------------------------------------
void __fastcall TFCautare::FormClose(TObject *Sender, TCloseAction &Action)
{
  dm->QCauta->Close();
  Label2->Caption="0";
  CheckBox1->Checked=false;
  CheckBox2->Checked=false;
  CheckBox3->Checked=false;
  CheckBox4->Checked=false;
  CheckBox5->Checked=false;
  CheckBox6->Checked=false;
  CheckBox7->Checked=false;
  CheckBox8->Checked=false;
  DateTimePicker1->Enabled=false;
   DateTimePicker2->Enabled=false;
   Edit1->Enabled=false;
   Edit8->Enabled=false;
	Edit2->Enabled=false;
	Edit3->Enabled=false;
	Edit4->Enabled=false;
	Edit5->Enabled=false;
	Edit6->Enabled=false;
	Edit7->Enabled=false;
}
//---------------------------------------------------------------------------
