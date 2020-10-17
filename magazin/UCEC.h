//---------------------------------------------------------------------------

#ifndef UCECH
#define UCECH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class TFCec : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TPanel *Panel2;
	TPanel *Panel3;
	TDBGrid *DBGrid1;
	TButton *BTiparire;
	TButton *Button2;
	TLabel *Label21;
	TLabel *LData;
	TLabel *Label19;
	TLabel *Label20;
	TPanel *Panel4;
	TLabel *Label1;
	TRadioButton *RadioButton1;
	TRadioButton *RadioButton2;
	TButton *Button1;
	TButton *Button3;
	void __fastcall BTiparireClick(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall Button3Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFCec(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFCec *FCec;
//---------------------------------------------------------------------------
#endif
