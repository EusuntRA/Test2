//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
//---------------------------------------------------------------------------
USEFORM("Udm.cpp", dm); /* TDataModule: File Type */
USEFORM("UMain.cpp", FCasa);
USEFORM("UReceptie.cpp", FReceptie);
USEFORM("UCEC.cpp", FCec);
USEFORM("UCautare.cpp", FCautare);
USEFORM("UAutentificare.cpp", FAutentificare);
//---------------------------------------------------------------------------
int WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
	try
	{
		Application->Initialize();
		Application->MainFormOnTaskBar = true;
		Application->CreateForm(__classid(TFCasa), &FCasa);
		Application->CreateForm(__classid(Tdm), &dm);
		Application->CreateForm(__classid(TFReceptie), &FReceptie);
		Application->CreateForm(__classid(TFCec), &FCec);
		Application->CreateForm(__classid(TFCautare), &FCautare);
		Application->CreateForm(__classid(TFAutentificare), &FAutentificare);
		Application->Run();
	}
	catch (Exception &exception)
	{
		Application->ShowException(&exception);
	}
	catch (...)
	{
		try
		{
			throw Exception("");
		}
		catch (Exception &exception)
		{
			Application->ShowException(&exception);
		}
	}
	return 0;
}
//---------------------------------------------------------------------------