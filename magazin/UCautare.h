//---------------------------------------------------------------------------

#ifndef UCautareH
#define UCautareH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Data.DB.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ComCtrls.hpp>
#include <Vcl.DBGrids.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Grids.hpp>
//---------------------------------------------------------------------------
class TFCautare : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TPanel *Panel2;
	TDBGrid *DBGrid1;
	TPanel *Panel3;
	TCheckBox *CheckBox1;
	TEdit *Edit1;
	TCheckBox *CheckBox2;
	TDateTimePicker *DateTimePicker1;
	TCheckBox *CheckBox3;
	TEdit *Edit2;
	TEdit *Edit3;
	TCheckBox *CheckBox4;
	TEdit *Edit4;
	TCheckBox *CheckBox5;
	TEdit *Edit5;
	TCheckBox *CheckBox6;
	TEdit *Edit6;
	TCheckBox *CheckBox7;
	TEdit *Edit7;
	TCheckBox *CheckBox8;
	TDateTimePicker *DateTimePicker2;
	TEdit *Edit8;
	TSpeedButton *SpeedButton1;
	TSpeedButton *SpeedButton2;
	TLabel *Label1;
	TLabel *Label2;
	void __fastcall CheckBox1Click(TObject *Sender);
	void __fastcall CheckBox2Click(TObject *Sender);
	void __fastcall CheckBox3Click(TObject *Sender);
	void __fastcall CheckBox4Click(TObject *Sender);
	void __fastcall CheckBox5Click(TObject *Sender);
	void __fastcall CheckBox6Click(TObject *Sender);
	void __fastcall CheckBox7Click(TObject *Sender);
	void __fastcall CheckBox8Click(TObject *Sender);
	void __fastcall SpeedButton1Click(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TFCautare(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFCautare *FCautare;
//---------------------------------------------------------------------------
#endif
