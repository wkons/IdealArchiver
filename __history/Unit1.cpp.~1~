//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MTrand.hpp"

MTRand *rnd;

Graphics::TBitmap *bmp;

char *buf;

int size=100;

// Разрыв и подстрока максимального размера
int MaxSubStr(char *s, int ls, int *sz)
{
  int i, j, p;

  *sz=0;

  for (i=0;i<=ls;i++)
  {
	for (j=1;i+j<=ls;j++)
	{
	  if (s[i]==1 && (s[i+j]==0 || i+j>=ls))
	  {
		if (j>*sz)
		{
		  *sz=j; p=i;
		}

		i+=j;

		break;
	  }
	}
  }

  return p;
}

void InsertBit(char *buf, int *sz, int pos, char bit)
{
  for (int i=*sz;i>pos;i--)
  {
	buf[i]=buf[i-1];
  }

  buf[pos]=bit;

  (*sz)++;
}

char ExtractBit(char *buf, int *sz, int pos)
{
  char bit=buf[pos];

  for (int i=pos;i<*sz;i++)
  {
	buf[i]=buf[i-1];
  }

  (*sz)--;

  return bit;
}

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormCreate(TObject *Sender)
{
  // Инициализация генератора случайных чисел и графики

  rnd = new MTRand();

  bmp = new Graphics::TBitmap();

  bmp->Width=100;//SZ_X;

  bmp->Height=100;//SZ_Y;

  bmp->PixelFormat = pf24bit;

  DoubleBuffered=1;

  // Инициализация буфера сети

  buf=(char*)malloc(size+1);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormDestroy(TObject *Sender)
{
  delete bmp, rnd;

  free(buf);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormPaint(TObject *Sender)
{
/*
  for (int i=0;i<SZ_Y;i++)
  {
	unsigned char *b=(unsigned char*)bmp->ScanLine[i];

	for (int j=0;j<SZ_X;j++)
	{
	  if (buf[i*SZ_Y+j])
	  {
		b[j*3+0]=128;
		b[j*3+1]=255;
		b[j*3+2]=128;
	  }
	  else
	  {
		b[j*3+0]=0;
		b[j*3+1]=0;
		b[j*3+2]=0;
	  }
	}
  }

  TRect r;

  r.top=PaintBox1->Top;

  r.left=PaintBox1->Left;

  r.bottom=PaintBox1->Top+PaintBox1->Height;

  r.right=PaintBox1->Left+PaintBox1->Width;

  Canvas->Pen->Color=clRed;

  Canvas->Rectangle(r.left-1,r.top-1,r.right+1,r.bottom+1);

  Canvas->StretchDraw(r,bmp);
*/
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
  Memo1->Lines->Clear();
  Memo2->Lines->Clear();

  for (int i=0;i<size;i++)
  {
	buf[i]=rnd->randInt()%2;
  }

  if (size<3000)
  {
	WideChar mbuf[3001];

	for (int i=0;i<size;i++)
	{
	  mbuf[i]=buf[i]+'0';
	  mbuf[i+1]=0;
	}
	Memo1->SetTextBuf(mbuf);
  }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Edit1Change(TObject *Sender)
{
  AnsiString as = Edit1->Text;

  size = as.ToInt();

  buf=(char*)realloc(buf,size);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
  //Memo2->Lines->Clear();

  char txt[3001];

  int sz, osz;

  int ps;

  int kol=1;

  ps=MaxSubStr(buf,size,&sz);

  osz=sz;

  for (;;)
  {
	for (int i=0;i<sz;i++) buf[ps+i]=2;

	ps=MaxSubStr(buf,size,&sz);

	if (osz==sz) kol++; else break;
  }

  sprintf(txt,"макс подстрока:   позиция %ld, длина %ld, кол-во %ld",ps,osz,kol);

  Memo2->Lines->Add(txt);
  Memo2->Lines->Add("");

  sprintf(txt,"разрыв: %ld",osz-sz-1);

  Memo2->Lines->Add(txt);

  if (size<3000)
  {
	for (int i=0;i<size;i++)
	{
	  txt[i]=buf[i]+'0';
	  txt[i+1]=0;
	}

	Memo1->Lines->Add("");
	Memo1->Lines->Add(txt);
  }

}
//---------------------------------------------------------------------------

