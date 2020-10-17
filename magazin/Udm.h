//---------------------------------------------------------------------------

#ifndef UdmH
#define UdmH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Data.DB.hpp>
#include <FireDAC.Comp.Client.hpp>
#include <FireDAC.Phys.hpp>
#include <FireDAC.Phys.Intf.hpp>
#include <FireDAC.Phys.MSSQL.hpp>
#include <FireDAC.Phys.MSSQLDef.hpp>
#include <FireDAC.Stan.Async.hpp>
#include <FireDAC.Stan.Def.hpp>
#include <FireDAC.Stan.Error.hpp>
#include <FireDAC.Stan.Intf.hpp>
#include <FireDAC.Stan.Option.hpp>
#include <FireDAC.Stan.Pool.hpp>
#include <FireDAC.UI.Intf.hpp>
#include <FireDAC.VCLUI.Wait.hpp>
#include <FireDAC.Comp.DataSet.hpp>
#include <FireDAC.DApt.hpp>
#include <FireDAC.DApt.Intf.hpp>
#include <FireDAC.DatS.hpp>
#include <FireDAC.Stan.Param.hpp>
#include "frxClass.hpp"
#include "frxDBSet.hpp"
#include "frxExportPDF.hpp"
#include "frxExportRTF.hpp"
//---------------------------------------------------------------------------
class Tdm : public TDataModule
{
__published:	// IDE-managed Components
	TFDConnection *BAZA;
	TFDQuery *QProdus;
	TDataSource *DSQProdus;
	TFDQuery *QUM;
	TDataSource *DSUM;
	TFDQuery *QLiber;
	TFDQuery *QReceptieF;
	TDataSource *DSQReceptieF;
	TFDQuery *QVanzare;
	TDataSource *DSQVanzare;
	TFDQuery *QCautProd;
	TFDQuery *QCautClient;
	TFDAutoIncField *QCautClientCLIENT_ID;
	TStringField *QCautClientNPP;
	TIntegerField *QCautClientPROCENT;
	TFDQuery *QCASA;
	TDataSource *DQSCASA;
	TFDQuery *FDQuery1;
	TFDQuery *FDQuery2;
	TfrxReport *frxReport1;
	TfrxDBDataset *frxDBDataset1;
	TFDQuery *QCASATotal;
	TfrxDBDataset *frxDBDataset2;
	TfrxReport *frxCEC;
	TfrxDBDataset *frxDBDataset3;
	TFDQuery *QTotCec;
	TfrxDBDataset *frxDBDataset4;
	TfrxPDFExport *frxPDFExport1;
	TfrxRTFExport *frxRTFExport1;
	TfrxReport *frxReport2;
	TFDQuery *QCauta;
	TDataSource *DSCauta;
	TfrxReport *frxReport3;
	TFDQuery *QAutentificare;
	TFDQuery *QFirma;
	void __fastcall frxReport1GetValue(const UnicodeString VarName, Variant &Value);

private:	// User declarations
public:		// User declarations
	__fastcall Tdm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Tdm *dm;
//---------------------------------------------------------------------------
#endif
