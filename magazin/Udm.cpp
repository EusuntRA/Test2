//---------------------------------------------------------------------------


#pragma hdrstop

#include "Udm.h"
#include "UCEC.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma classgroup "Vcl.Controls.TControl"
#pragma link "frxClass"
#pragma link "frxDBSet"
#pragma link "frxExportPDF"
#pragma link "frxExportRTF"
#pragma resource "*.dfm"
Tdm *dm;
//---------------------------------------------------------------------------
__fastcall Tdm::Tdm(TComponent* Owner)
	: TDataModule(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall Tdm::frxReport1GetValue(const UnicodeString VarName, Variant &Value)

{
  if(CompareText(VarName, "op")==0)
   {
	Value=FCec->Label20->Caption;
   }
}
//---------------------------------------------------------------------------

