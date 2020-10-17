//---------------------------------------------------------------------------

#ifndef UReceptieH
#define UReceptieH
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
#include <System.ImageList.hpp>
#include <Vcl.ImgList.hpp>
#include <Vcl.Imaging.pngimage.hpp>
//---------------------------------------------------------------------------
class TFReceptie : public TForm
{
__published:	// IDE-managed Components
	TPageControl *PageControl1;
	TTabSheet *RECEPTIE;
	TTabSheet *PRODUS;
	TTabSheet *UNITATE;
	TPanel *Panel1;
	TPanel *Panel2;
	TPanel *Panel3;
	TEdit *ENr;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TEdit *EEmitent;
	TDateTimePicker *EDF;
	TPanel *Panel4;
	TPanel *Panel5;
	TLabel *Label4;
	TEdit *EProdus;
	TSpeedButton *SpeedButton1;
	TLabel *Label5;
	TEdit *EUM;
	TSpeedButton *SpeedButton2;
	TLabel *Label6;
	TEdit *ESt;
	TLabel *Label7;
	TEdit *EPrPr;
	TLabel *Label8;
	TEdit *EPrCom;
	TSpeedButton *SpeedButton3;
	TSpeedButton *SpeedButton4;
	TDBGrid *DBGrid1;
	TPanel *Panel6;
	TPanel *Panel7;
	TPageControl *PageControl2;
	TTabSheet *SELECPROD;
	TTabSheet *GESTPROD;
	TPanel *Panel8;
	TPanel *Panel9;
	TDBGrid *DBGrid2;
	TSpeedButton *SpeedButton5;
	TSpeedButton *SpeedButton6;
	TSpeedButton *SpeedButton7;
	TEdit *CautProd;
	TSpeedButton *SpeedButton8;
	TPanel *Panel10;
	TPageControl *PageControl3;
	TTabSheet *TabSheet1;
	TPanel *Panel11;
	TDBGrid *DBGrid3;
	TEdit *ECautUM;
	TPanel *Panel12;
	TSpeedButton *SpeedButton9;
	TSpeedButton *SpeedButton10;
	TSpeedButton *SpeedButton11;
	TTabSheet *TabSheet2;
	TPanel *Panel13;
	TImage *Image2;
	TLabel *Label9;
	TLabel *Label10;
	void __fastcall CautProdChange(TObject *Sender);
	void __fastcall SpeedButton5Click(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall SpeedButton1Click(TObject *Sender);
	void __fastcall SpeedButton7Click(TObject *Sender);
	void __fastcall ECautUMChange(TObject *Sender);
	void __fastcall SpeedButton2Click(TObject *Sender);
	void __fastcall SpeedButton9Click(TObject *Sender);
	void __fastcall SpeedButton11Click(TObject *Sender);
	void __fastcall SpeedButton3Click(TObject *Sender);
	void __fastcall SpeedButton8Click(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
	__fastcall TFReceptie(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFReceptie *FReceptie;
//---------------------------------------------------------------------------
#endif