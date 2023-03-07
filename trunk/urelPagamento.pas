unit urelPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLPrinters, RLBarcode;

type
  Tfrelpagamento = class(TForm)
    RLReport1: TRLReport;
    RLBand2: TRLBand;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLBand5: TRLBand;
    RLMemo1: TRLMemo;
    RLMemo2: TRLMemo;
    RLBand1: TRLBand;
    RLDBText2: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    rlNomeEmp: TRLMemo;
    RLBand3: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    rlComanda2: TRLLabel;
    RLBand6: TRLBand;
    RLLabel1: TRLLabel;
    rlVrTotal: TRLLabel;
    RLDBBarcode1: TRLDBBarcode;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vrtot : double;
    procedure Imprimir;
  end;

var
  frelpagamento: Tfrelpagamento;

implementation

{$R *.dfm}

uses uFuncoes, uModulo, uPrinc;

procedure Tfrelpagamento.Imprimir;
label TrataErroAoImprimir;
var
     auxPrinterName : String;
     iErroAoImprimir : Integer;
     bImpresso : Boolean;
begin
     iErroAoImprimir := 0;
     bImpresso := False;

     TrataErroAoImprimir :

     try
          //Corre��o erro fortes comparando com ACBr - 27/08/2015
          //SetVersion( CommercialVersion, ReleaseVersion, CommentVersion );

          RLPrinter.Refresh;

          auxPrinterName := RLPrinter.PrinterName;

          if (dm.FiniParam.ReadString('Caixa','ImpressoraPadraoCupom','') <> '')
          and (auxPrinterName <> dm.FiniParam.ReadString('Caixa','ImpressoraPadraoCupom','')) then
               RLPrinter.PrinterName := dm.FiniParam.ReadString('Caixa','ImpressoraPadraoCupom','');

          // Ajustando o tamanho da p�gina //
          RLReport1.PageBreaking := pbNone;

          RLReport1.Prepare;

          //RLReport1.PreviewModal;
          //Sleep(2000);

          //try
               RLReport1.Print;
          //except
          //end;

          bImpresso := True;

          if auxPrinterName <> RLPrinter.PrinterName then
               RLPrinter.PrinterName := auxPrinterName;
     except
          on E : Exception do
          begin
              Application.MessageBox('Erro ao imprimir comanda.', 'Aten�ao', mb_iconexclamation);
              exit;
              { if AnsiPos('Printing in progress',E.Message) > 0 then
                    RLPrinter.EndDoc;
               Inc(iErroAoImprimir);
               if (iErroAoImprimir > 1) and (bImpresso = False) then //Se deu mais de um erro, exibe a mensagem
                    Fprinc.ApplicationEvents1Exception(RLReport1, E);}
          end;
     end;

     if (iErroAoImprimir = 1) and (bImpresso = False) then //Se deu erro na primeira vez, tenta novamente
          goto TrataErroAoImprimir;
end;

procedure Tfrelpagamento.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
    rlVrTotal.Caption := FormatFloat('R$ #,##0.00', vrtot);
end;

end.
