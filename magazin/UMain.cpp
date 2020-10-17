//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "UMain.h"
#include "Udm.h"
#include "UReceptie.h"
#include "UCEC.h"
#include "UCautare.h"
#include "UAutentificare.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TFCasa *FCasa;
TDateTime DT;
int cec,id_client=1,kkontor;
float procent=0;
//---------------------------------------------------------------------------
__fastcall TFCasa::TFCasa(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TFCasa::Timer1Timer(TObject *Sender)
{
  Label8->Caption=DT.CurrentTime();
  if(dm->BAZA->Connected==false)
   {Disconnect->Visible=true;}
   else
   {Disconnect->Visible=false;}
}
//---------------------------------------------------------------------------

void __fastcall TFCasa::FormShow(TObject *Sender)
{
   Label5->Caption=DT.CurrentDate();
   FAutentificare->ShowModal();

}
//---------------------------------------------------------------------------


void __fastcall TFCasa::KBClick(TObject *Sender)
{

  if(EScan->Text.Length()>0)
  {
   float disc,sumtot;
   dm->QCautProd->Close();
   dm->QCautProd->ParamByName("cod_produs")->AsString=EScan->Text;
   dm->QCautProd->ParamByName("firma_id")->AsInteger=dm->QAutentificare->FieldByName("firma_id")->AsInteger;
   dm->QCautProd->Open();


   dm->QCautClient->Close();
   dm->QCautClient->ParamByName("cod_CLIENT")->AsString=EScan->Text;
   dm->QCautClient->Open();

   if(!dm->QCautClient->IsEmpty())
	{
	 id_client=dm->QCautClientCLIENT_ID->AsInteger;
	 procent=dm->QCautClientPROCENT->AsInteger;
	 Label20->Caption=dm->QCautClientNPP->AsString;
	 if((dm->QVanzare->Active==true)&&(!dm->QVanzare->IsEmpty()))
	 {
	   //atribuim cecului id-ul clientului
	   dm->QLiber->Close();
	   dm->QLiber->SQL->Clear();
	   dm->QLiber->SQL->Add("update cec set client_id=:client_id where cec_id=:cec_id");
	   dm->QLiber->ParamByName("client_id")->AsInteger=id_client;
	   dm->QLiber->ParamByName("cec_id")->AsInteger=cec;
	   dm->QLiber->ExecSQL();

	   dm->QVanzare->First(); //trece la prima pozitie din tabela qvanzare
	  //parcurge inregistrarile din vinzare si le modifica discountul
	   while(!dm->QVanzare->Eof)
	   {
		 disc =dm->QVanzare->FieldByName("SUMACALC")->AsFloat*(procent/100);
		 sumtot=dm->QVanzare->FieldByName("SUMACALC")->AsFloat-disc;
		dm->QLiber->Close();
		dm->QLiber->SQL->Clear();
		dm->QLiber->SQL->Add("UPDATE VANZARE SET SUMA_DISC=:SUMA_DISC,SUMA_TOTAL=:SUMA_TOTAL WHERE VANZARE_ID=:VANZARE_ID");
		dm->QLiber->ParamByName("VANZARE_ID")->AsInteger=dm->QVanzare->FieldByName("Vanzare_id")->AsInteger;
		dm->QLiber->ParamByName("SUMA_DISC")->AsFloat=disc;
		dm->QLiber->ParamByName("SUMA_TOTAL")->AsFloat=sumtot;
		dm->QLiber->ExecSQL();

		dm->QVanzare->Next();
	   }
	   //facem refresh la tabela cu vinzare
	   dm->QVanzare->Close();
	   dm->QVanzare->ParamByName("cec_id")->AsInteger=cec;
	   dm->QVanzare->Open();

	   dm->QLiber->Close();
	   dm->QLiber->SQL->Clear();
	   dm->QLiber->SQL->Add(" select sum(SUMA_TOTAL) AS TOTAL FROM VANZARE WHERE CEC_ID=:CEC_ID");
	   dm->QLiber->ParamByName("cec_id")->AsInteger=cec;
	   dm->QLiber->Open();
	  LSumaCec->Caption=dm->QLiber->FieldByName("TOTAL")->AsString;
	}
	  EScan->Clear();
	  LDescriere->Caption="";

   }


   if(!dm->QCautProd->IsEmpty())
	{
	 LDescriere->Caption=dm->QCautProd->FieldByName("denumire")->AsString+" / "+dm->QCautProd->FieldByName("pret_vanz")->AsString+" lei.";
	 //verificam daca nu avem inregistrari in vinzare
	 //atunci formam cecul
	 if(dm->QVanzare->IsEmpty())
	 {
	  dm->QLiber->Close();
	  dm->QLiber->SQL->Clear();
		 if(id_client==1) //daca nu sa gasit client, formam cecul in mod obisnuit
			dm->QLiber->SQL->Add("insert into cec(operator_id,firma_id) values(:operator_id,:firma_id)");
		 else // daca a fost depistat client, atunci adaugam in cec si informatia despre client
		  {
		   dm->QLiber->SQL->Add("insert into cec(operator_id,firma_id,client_id) values(:operator_id,:firma_id,:client_id)");
		   dm->QLiber->ParamByName("client_id")->AsInteger=id_client;
		  }
		   dm->QLiber->ParamByName("firma_id")->AsInteger=dm->QAutentificare->FieldByName("firma_id")->AsInteger;
		   dm->QLiber->ParamByName("operator_id")->AsInteger=dm->QAutentificare->FieldByName("operator_id")->AsInteger;

	  dm->QLiber->ExecSQL();

	  dm->QLiber->Close();
	  dm->QLiber->SQL->Clear();
	  dm->QLiber->SQL->Add("select @@IDENTITY as idd");
	  dm->QLiber->Open();
	  cec=dm->QLiber->FieldByName("idd")->AsInteger;
	 }


	 if(id_client==1) //daca nu avem client, atunci nu avem discount
	 {
		 disc =0;
		 sumtot=dm->QCautProd->FieldByName("PRET_VANZ")->AsFloat;
	 }
	 else    //daca este client, atunci avem discount
	 {
		 disc=dm->QCautProd->FieldByName("PRET_VANZ")->AsFloat*(procent/100);
		 sumtot=dm->QCautProd->FieldByName("PRET_VANZ")->AsFloat-disc;
	 }

	 //verificam daca acelasi produs nu am amai fost introdus pe cecul dat
	  dm->QLiber->Close();
	  dm->QLiber->SQL->Clear();
	  dm->QLiber->SQL->Add("select CANTITATEA,SUMA,SUMA_DISC,SUMA_TOTAL,vanzare_id from vanzare v inner join receptie r on r.receptie_id=v.receptie_id and produse_id=:produse_id and cec_id=:cec_id");
	  dm->QLiber->ParamByName("CEC_ID")->AsInteger=cec;
	  dm->QLiber->ParamByName("produse_id")->AsInteger=dm->QCautProd->FieldByName("produse_id")->AsInteger;
	  dm->QLiber->Open();

	  if(!dm->QLiber->IsEmpty())   //a fost gasit un produs identic anterior in cecul dat  il modificam
	  {
	   int ID,Kan=0;
	   float S1=0,S2=0,S3=0;
	   ID=dm->QLiber->FieldByName("vanzare_id")->AsInteger;
	   Kan=dm->QLiber->FieldByName("CANTITATEA")->AsInteger+1;
	   S1=dm->QLiber->FieldByName("SUMA")->AsFloat+dm->QCautProd->FieldByName("PRET_VANZ")->AsFloat;
	   S2=dm->QLiber->FieldByName("SUMA_DISC")->AsFloat+disc;
	   S3=dm->QLiber->FieldByName("SUMA_TOTAL")->AsFloat+sumtot;

	   //efectuam modificarea pozitiei
	   dm->QLiber->Close();
	   dm->QLiber->SQL->Clear();
	   dm->QLiber->SQL->Add("update vanzare set CANTITATEA=:CANTITATEA,SUMA=:SUMA,SUMA_DISC=:SUMA_DISC,SUMA_TOTAL=:SUMA_TOTAL where vanzare_id=:vanzare_id");
	   dm->QLiber->ParamByName("CANTITATEA")->AsInteger=Kan;
	   dm->QLiber->ParamByName("SUMA")->AsFloat=S1;
	   dm->QLiber->ParamByName("SUMA_DISC")->AsFloat=S2;
	   dm->QLiber->ParamByName("SUMA_TOTAL")->AsFloat=S3;
	   dm->QLiber->ParamByName("vanzare_id")->AsInteger=ID;
	   dm->QLiber->ExecSQL();
	  }
	  else     //in caz contrar il introducem
	  {
	   //procesul de vanzare
		dm->QLiber->Close();
		dm->QLiber->SQL->Clear();
		dm->QLiber->SQL->Add("INSERT INTO VANZARE(CEC_ID,RECEPTIE_ID,CANTITATEA,SUMA,SUMA_DISC,SUMA_TOTAL) VALUES(:CEC_ID,:RECEPTIE_ID,:CANTITATEA,:SUMA,:SUMA_DISC,:SUMA_TOTAL)");
		dm->QLiber->ParamByName("CEC_ID")->AsInteger=cec;
		dm->QLiber->ParamByName("RECEPTIE_ID")->AsInteger=dm->QCautProd->FieldByName("RECEPTIE_ID")->AsInteger;
		dm->QLiber->ParamByName("CANTITATEA")->AsInteger=1;
		dm->QLiber->ParamByName("SUMA")->AsFloat=dm->QCautProd->FieldByName("PRET_VANZ")->AsFloat;
		dm->QLiber->ParamByName("SUMA_DISC")->AsFloat=disc;
		dm->QLiber->ParamByName("SUMA_TOTAL")->AsFloat=sumtot;
		dm->QLiber->ExecSQL();
	  }

	  /////

	  //modificarea cantitatii in receptie

	  ////
	  dm->QVanzare->Close();
	  dm->QVanzare->ParamByName("cec_id")->AsInteger=cec;
	  dm->QVanzare->Open();

	  dm->QLiber->Close();
	  dm->QLiber->SQL->Clear();
	  dm->QLiber->SQL->Add(" select sum(SUMA_TOTAL) AS TOTAL FROM VANZARE WHERE CEC_ID=:CEC_ID");
	  dm->QLiber->ParamByName("cec_id")->AsInteger=cec;
	  dm->QLiber->Open();
	  LSumaCec->Caption=dm->QLiber->FieldByName("TOTAL")->AsString;

	  EScan->Clear();
	  LDescriere->Caption="";
	}
	else
	{
	 EScan->Clear();
	 LDescriere->Caption="PRODUS NEIDENTIFICAT!!!";
	}

  }
  else
  {
   LDescriere->Caption="";
  }
}
//---------------------------------------------------------------------------

void __fastcall TFCasa::Image7Click(TObject *Sender)
{
 FReceptie->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TFCasa::CS2Click(TObject *Sender)
{

if(CS2->Visible==true)
{
  CS2->Visible=false;
}
else
{
  CS2->Visible=true;
}
}
//---------------------------------------------------------------------------



void __fastcall TFCasa::Image10Click(TObject *Sender)
{
  id_client=1;
  procent=0;
 //inregistram cecul
 dm->QLiber->Close();
 dm->QLiber->SQL->Clear();
 dm->QLiber->SQL->Add("UPDATE CEC SET NR_CEC=(SELECT MAX(NR_CEC)+1 FROM CEC),SUMA_CEC=:SUMA_CEC WHERE CEC_ID=:CEC_ID");
 dm->QLiber->ParamByName("SUMA_CEC")->AsFloat=StrToFloat(LSumaCec->Caption);
 dm->QLiber->ParamByName("CEC_ID")->AsInteger=cec;
 dm->QLiber->ExecSQL();

 //citim suma de bani din casa a operatorului dat in ziua data
  dm->QLiber->Close();
  dm->QLiber->SQL->Clear();
  dm->QLiber->SQL->Add(" select sum(SUMA_CEC) AS TOTAL FROM CEC WHERE CAST(DATA_CEC AS DATE)=CAST(GETDATE() AS DATE) AND OPERATOR_ID=:OPERATOR_ID AND NR_CEC<>0");
  dm->QLiber->ParamByName("OPERATOR_ID")->AsInteger=dm->QAutentificare->FieldByName("operator_id")->AsInteger;


  dm->QLiber->Open();
  LCasa->Caption=dm->QLiber->FieldByName("TOTAL")->AsString;


  dm->QTotCec->Close();
  dm->QTotCec->ParamByName("CEC_ID")->AsInteger=cec;
  dm->QTotCec->Open();
  dm->frxCEC->ShowReport(true);   // afiseaza cecul

  //afisarea cecului
  LDescriere->Caption="";
  Label20->Caption="";
  LSumaCec->Caption="0.00";
  EScan->Clear();
  dm->QVanzare->Close();
}
//---------------------------------------------------------------------------


void __fastcall TFCasa::Image6Click(TObject *Sender)
{
AnsiString g;
g=" select ROW_NUMBER() OVER(ORDER BY NR_CEC DESC) as NR, ";
g=g+" CAST(DATA_CEC AS DATE) as DATA, ";
g=g+" NR_CEC,SUMA_CEC AS TOTAL FROM CEC ";
g=g+" WHERE OPERATOR_ID=:OPERATOR_ID AND NR_CEC<>0 ";
g=g+" AND CAST(DATA_CEC AS DATE)=CAST(GETDATE() AS DATE) ";
g=g+" ORDER BY DATA_CEC,NR_CEC DESC ";

dm->QCASA->Close();
dm->QCASA->SQL->Clear();
dm->QCASA->SQL->Add(g);
dm->QCASA->ParamByName("operator_id")->AsInteger=dm->QAutentificare->FieldByName("operator_id")->AsInteger;
dm->QCASA->Open();

dm->QCASATotal->Close();
dm->QCASATotal->ParamByName("operator_id")->AsInteger=dm->QAutentificare->FieldByName("operator_id")->AsInteger;
dm->QCASATotal->Open();

if(!dm->QCASA->IsEmpty())
 {
  FCec->LData->Caption=dm->QCASA->FieldByName("data")->AsString;
  FCec->ShowModal();
 }
 else
 {
  ShowMessage("Nu sunt cecuri inregistrate");
 }
}
//---------------------------------------------------------------------------

void __fastcall TFCasa::Image11Click(TObject *Sender)
{
 if(!dm->QVanzare->IsEmpty())
 {
  LMDescriere->Caption=dm->QVanzare->FieldByName("produs")->AsString;
  PModifCant->Visible=true;
  DBGrid1->Enabled=false;
  kkontor=1;
  ECantitate->NumbersOnly=true;
  LTitlu->Caption="Modificare cantitate";
  LTip->Caption="Cantitate:";
 }
 else
 {
 ShowMessage("Nu sunt date de modificat cantitatea");
 }
}
//---------------------------------------------------------------------------

void __fastcall TFCasa::SpeedButton1Click(TObject *Sender)
{
 if(ECantitate->Text!="")
 {
	  if((kkontor==1)&&(ECantitate->Text.ToInt()>0)) //modificare
	  {
	   int ID,Kan=0;
	   float S1=0,S2=0,S3=0;
	   ID=dm->QVanzare->FieldByName("vanzare_id")->AsInteger;
	   Kan=ECantitate->Text.ToInt();
	   S1=dm->QVanzare->FieldByName("PRET_VANZ")->AsFloat*Kan;
	   S2=S1*(procent/100);
	   S3=S1-S2;

	   //efectuam modificarea pozitiei
	   dm->QLiber->Close();
	   dm->QLiber->SQL->Clear();
	   dm->QLiber->SQL->Add("update vanzare set CANTITATEA=:CANTITATEA,SUMA=:SUMA,SUMA_DISC=:SUMA_DISC,SUMA_TOTAL=:SUMA_TOTAL where vanzare_id=:vanzare_id");
	   dm->QLiber->ParamByName("CANTITATEA")->AsInteger=Kan;
	   dm->QLiber->ParamByName("SUMA")->AsFloat=S1;
	   dm->QLiber->ParamByName("SUMA_DISC")->AsFloat=S2;
	   dm->QLiber->ParamByName("SUMA_TOTAL")->AsFloat=S3;
	   dm->QLiber->ParamByName("vanzare_id")->AsInteger=ID;
	   dm->QLiber->ExecSQL();
	  }
	  else  //anulare
	  {
		  dm->QLiber->Close();
		  dm->QLiber->SQL->Clear();
		  dm->QLiber->SQL->Add("SELECT * FROM OPERATOR WHERE COD=:COD");
		  dm->QLiber->ParamByName("COD")->AsString=ECantitate->Text;
		  dm->QLiber->Open();
		  //ShowMessage("dd");
		  if((!dm->QLiber->IsEmpty())&&(dm->QLiber->FieldByName("TIP_ACCES")->AsInteger==2))
		  {
			   dm->QLiber->Close();
			   dm->QLiber->SQL->Clear();
			   dm->QLiber->SQL->Add("DELETE vanzare where vanzare_id=:vanzare_id");
			   dm->QLiber->ParamByName("vanzare_id")->AsInteger=dm->QVanzare->FieldByName("vanzare_id")->AsInteger;
			   dm->QLiber->ExecSQL();

		  }
		   else
		   {
		   ShowMessage("Dvs nu aveti dreptul de eliminare a pozitiei");
		   }
	  }
	   //refresh
	   dm->QVanzare->Close();
	   dm->QVanzare->ParamByName("cec_id")->AsInteger=cec;
	   dm->QVanzare->Open();

	   dm->QLiber->Close();
	   dm->QLiber->SQL->Clear();
	   dm->QLiber->SQL->Add(" select sum(SUMA_TOTAL) AS TOTAL FROM VANZARE WHERE CEC_ID=:CEC_ID");
	   dm->QLiber->ParamByName("cec_id")->AsInteger=cec;
	   dm->QLiber->Open();
	   LSumaCec->Caption=dm->QLiber->FieldByName("TOTAL")->AsString;

	   DBGrid1->Enabled=true;
	   PModifCant->Visible=false;
	   ECantitate->Clear();
 }
}
//---------------------------------------------------------------------------

void __fastcall TFCasa::SpeedButton2Click(TObject *Sender)
{
	DBGrid1->Enabled=true;
	PModifCant->Visible=false;
	ECantitate->Clear();
}
//---------------------------------------------------------------------------


void __fastcall TFCasa::Image12Click(TObject *Sender)
{
 if(!dm->QVanzare->IsEmpty())
 {
  LMDescriere->Caption=dm->QVanzare->FieldByName("produs")->AsString;
  PModifCant->Visible=true;
  DBGrid1->Enabled=false;
  kkontor=2;
  ECantitate->NumbersOnly=false;
  LTitlu->Caption="Anulare produs";
  LTip->Caption="Admin:";
 }
 else
 {
 ShowMessage("Nu sunt date de modificat cantitatea");
 }
}
//---------------------------------------------------------------------------

void __fastcall TFCasa::Image5Click(TObject *Sender)
{
 FCautare->ShowModal();
}
//---------------------------------------------------------------------------


