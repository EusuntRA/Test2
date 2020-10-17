//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UAutentificare.h"
#include "Udm.h"
#include "UMain.h"
#include "UReceptie.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFAutentificare *FAutentificare;
//---------------------------------------------------------------------------
__fastcall TFAutentificare::TFAutentificare(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFAutentificare::FormShow(TObject *Sender)
{
   dm->QFirma->Close();
   dm->QFirma->Open();
   CBFirmaa->Clear();
   while(!dm->QFirma->Eof)
	{
	 FAutentificare->CBFirmaa->Items->Add(dm->QFirma->FieldByName("nume")->AsString);
	 dm->QFirma->Next();
	}
}
//---------------------------------------------------------------------------
void __fastcall TFAutentificare::SpeedButton1Click(TObject *Sender)
{
if(( CBFirmaa->Text!="")&&(Edit1->Text!="")&&(Edit2->Text!=""))
{
	dm->QAutentificare->Close();
	dm->QAutentificare->ParamByName("nume")->AsString=CBFirmaa->Text;
	dm->QAutentificare->ParamByName("username")->AsString=Edit1->Text;
	dm->QAutentificare->ParamByName("pass")->AsString=Edit2->Text;
	dm->QAutentificare->Open();

	if(!dm->QAutentificare->IsEmpty())
	 {
	  switch(dm->QAutentificare->FieldByName("tip_acces")->AsInteger)
	  {
		case 3://operator vinzare
		{
		  FCasa->Label6->Caption=dm->QAutentificare->FieldByName("functia")->AsString;
		  FCasa->Label9->Caption=dm->QAutentificare->FieldByName("nume")->AsString+" "+dm->QAutentificare->FieldByName("prenume")->AsString;
		  FCasa->Label7->Caption=dm->QAutentificare->FieldByName("FIRMA")->AsString;

		  FCasa->Image7->Enabled=false;
		  FCasa->AlphaBlend=false;
		  break;
		}
		case 4://operator receptie
		{
		  FAutentificare->AlphaBlendValue=0;
		  FAutentificare->AlphaBlend=true;
		  FReceptie->Label9->Caption=dm->QAutentificare->FieldByName("functia")->AsString;
		  FReceptie->Label10->Caption=dm->QAutentificare->FieldByName("nume")->AsString+" "+dm->QAutentificare->FieldByName("prenume")->AsString;
		  FReceptie->ShowModal();

		  break;
		}
	  }
	  Close();
	 }
	 else
	 {
	  ShowMessage("Autentificare esuata");
	  Edit2->Clear();
	 }
}

else
{
 ShowMessage("Dvs nu ati indeplinit toate cimpurile");
}
}
//---------------------------------------------------------------------------
void __fastcall TFAutentificare::SpeedButton2Click(TObject *Sender)
{
exit(0);
}
//---------------------------------------------------------------------------
