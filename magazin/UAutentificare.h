//---------------------------------------------------------------------------

#ifndef UAutentificareH
#define UAutentificareH
//---------------------------------------------------------------------------
#include <System.Classes.hpp>
#include <Vcl.Controls.hpp>
#include <Vcl.StdCtrls.hpp>
#include <Vcl.Forms.hpp>
#include <Vcl.Buttons.hpp>
#include <Vcl.ExtCtrls.hpp>
#include <Vcl.Imaging.pngimage.hpp>
//---------------------------------------------------------------------------
class TFAutentificare : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel1;
	TLabel *Label1;
	TPanel *Panel2;
	TSpeedButton *SpeedButton1;
	TSpeedButton *SpeedButton2;
	TPanel *Panel3;
	TImage *Image1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TComboBox *CBFirmaa;
	TEdit *Edit1;
	TEdit *Edit2;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall SpeedButton1Click(TObject *Sender);
	void __fastcall SpeedButton2Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TFAutentificare(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFAutentificare *FAutentificare;
//---------------------------------------------------------------------------
#endif
