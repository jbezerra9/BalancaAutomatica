unit uPrinc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.StrUtils,
  System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  ACBrBase, ACBrBAL, Vcl.StdCtrls, Data.DB, Data.FMTBcd, Data.SqlExpr,
  Datasnap.DBClient, RLReport, Vcl.Buttons, ACBrDeviceSerial, Datasnap.Provider;

type
  TfPrinc = class(TForm)
    pnlTitulo: TPanel;
    Image1: TImage;
    pnlPeso: TPanel;
    FACBrBAL: TACBrBAL;
    mMensagem: TMemo;
    lbBBifood: TLabel;
    sqlcon: TSQLQuery;
    Label1: TLabel;
    Label2: TLabel;
    vrProd: TLabel;
    vrPeso: TLabel;
    dsComandaItem: TDataSource;
    sqlcon2: TSQLQuery;
    Timer1: TTimer;
    btSair: TSpeedButton;
    sdsComandaItem: TSQLDataSet;
    sdsComandaItemCOMANDA: TIntegerField;
    sdsComandaItemCODPROD: TStringField;
    sdsComandaItemCODPROD_2: TStringField;
    sdsComandaItemDESCRICAO: TStringField;
    sdsComandaItemQTD: TFloatField;
    sdsComandaItemVR_UNIT: TFloatField;
    sdsComandaItemFUNCIONARIO: TStringField;
    sdsComandaItemID_INGRE: TIntegerField;
    sdsComandaItemSEQ_ITEM: TIntegerField;
    sdsComandaItemDATA: TDateField;
    sdsComandaItemHORA: TTimeField;
    sdsComandaItemCOMANDA_ANTERIOR: TIntegerField;
    sdsComandaItemSEQ_PESO: TIntegerField;
    sdsComandaItemVIAGEM: TStringField;
    sdsComandaItemTAXAATENDIMENTO: TStringField;
    sdsComandaItemPROD_PAI: TIntegerField;
    sdsComandaItemID_PIZZA: TIntegerField;
    sdsComandaItemIDTRANSACAO_EASYCHOPP: TStringField;
    dspComandaItem: TDataSetProvider;
    cdsComandaItem: TClientDataSet;
    cdsComandaItemCOMANDA: TIntegerField;
    cdsComandaItemCODPROD: TStringField;
    cdsComandaItemCODPROD_2: TStringField;
    cdsComandaItemDESCRICAO: TStringField;
    cdsComandaItemQTD: TFloatField;
    cdsComandaItemVR_UNIT: TFloatField;
    cdsComandaItemFUNCIONARIO: TStringField;
    cdsComandaItemID_INGRE: TIntegerField;
    cdsComandaItemSEQ_ITEM: TIntegerField;
    cdsComandaItemDATA: TDateField;
    cdsComandaItemHORA: TTimeField;
    cdsComandaItemCOMANDA_ANTERIOR: TIntegerField;
    cdsComandaItemSEQ_PESO: TIntegerField;
    cdsComandaItemVIAGEM: TStringField;
    cdsComandaItemTAXAATENDIMENTO: TStringField;
    cdsComandaItemPROD_PAI: TIntegerField;
    cdsComandaItemID_PIZZA: TIntegerField;
    cdsComandaItemIDTRANSACAO_EASYCHOPP: TStringField;
    procedure FormDestroy(Sender: TObject);
    procedure FACBrBALLePeso(Peso: Double; Resposta: AnsiString);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
    vrvenda: Double;
    procedure MensagemMemo(sHead, sTitulo, sCorpo : string; iCor : integer; sPeso : double; pausa : Cardinal);
    procedure ConfiguraBal;
    function lerBalanca(Peso: Double): Boolean;
  public
    { Public declarations }
    BalancaPronta : Boolean;
    PesoAnterior: Double;
    precoKG     : Double;
  end;

var
  fPrinc: TfPrinc;
  codUsuario: Integer;
  nomUsuario, sUserFunc, codCaixa, datasenha: String;
  sAcessoUsuario: String;
  sAcessoSenha: String;
  sCodProd: String;

implementation

{$R *.dfm}

uses uFuncoes, uModulo, Utransacao, uMensagem, upesqcad, urelPagamento,
  uselecionaprod;

procedure TfPrinc.ConfiguraBal;
var  timeout : integer;
begin
    try
      FACBrBal.Desativar;

      FACBrBAL.Modelo           := TACBrBALModelo(2);
      FACBrBAL.Device.Porta     := dm.FiniParam.ReadString('Balanca1','Porta','COM1');
      FACBrBAL.Device.Baud      := StrToInt(dm.FiniParam.ReadString('Balanca1','BaudRate','2400'));
      FACBrBAL.Device.Data      := StrToInt(dm.FiniParam.ReadString('Balanca1','DataBits','8'));
      FACBrBAL.Device.Parity    := TACBrSerialParity(dm.FiniParam.ReadInteger('Balanca1','Paridade',0));
      FACBrBAL.Device.Stop      := TACBrSerialStop(dm.FiniParam.ReadInteger('Balanca1','StopBits',0));
      FACBrBAL.Device.HandShake := TACBrHandShake(dm.FiniParam.ReadInteger('Balanca1','HandShaking',0));
      TimeOut                   := dm.FiniParam.ReadInteger('Balanca1','TimeOut',2000);

      FACBrBal.Ativar;

      FACBrBAL.EnviarPrecoKg(vrVenda, 2000);
    except
      Application.MessageBox('Falha ao enviar preço/KG para a balança!', 'Atenção', mb_ok + mb_iconerror);
      exit;
    end;

    FACBrBal.Desativar;

    FACBrBAL.Modelo           := TACBrBALModelo(dm.FiniParam.ReadInteger('Balanca1','Modelo',2));
    FACBrBAL.Device.Porta     := dm.FiniParam.ReadString('Balanca1','Porta','COM1');
    FACBrBAL.Device.Baud      := StrToInt(dm.FiniParam.ReadString('Balanca1','BaudRate','2400'));
    FACBrBAL.Device.Data      := StrToInt(dm.FiniParam.ReadString('Balanca1','DataBits','8'));
    FACBrBAL.Device.Parity    := TACBrSerialParity(dm.FiniParam.ReadInteger('Balanca1','Paridade',0));
    FACBrBAL.Device.Stop      := TACBrSerialStop(dm.FiniParam.ReadInteger('Balanca1','StopBits',0));
    FACBrBAL.Device.HandShake := TACBrHandShake(dm.FiniParam.ReadInteger('Balanca1','HandShaking',0));
    TimeOut                   := dm.FiniParam.ReadInteger('Balanca1','TimeOut',2000);

    FACBrBal.Ativar;
end;
procedure TfPrinc.MensagemMemo(sHead, sTitulo, sCorpo : string; iCor : integer; sPeso : double; pausa : cardinal);
begin
      mMensagem.Lines.Clear;

      mMensagem.Color := iCor;

      mMensagem.Lines.Add(sHead);
      mMensagem.Lines.Add(sTitulo);
      mMensagem.Lines.Add(sCorpo);

      vrPeso.Caption := Format('%.3f kg', [sPeso]);
      vrProd.Caption := FormatFloat('R$ #,##0.00', sPeso * vrVenda);

      if pausa > 0 then
        Sleep(pausa * 1000);
end;
procedure TfPrinc.Timer1Timer(Sender: TObject);
begin
    FACBrBAL.Desativar;
    FACBrBAL.LePeso(2000);
    FAcbrBAL.Ativar;
end;

function TfPrinc.lerBalanca(Peso: Double): Boolean;
var codProdSalva1, codProdSalva2 : String;
begin
    if (Arredondar(Peso,3) = Arredondar(PesoAnterior,3))
    or (Arredondar(Peso,3) = Arredondar(PesoAnterior + 0.002,3))
    or (Arredondar(Peso,3) = Arredondar(PesoAnterior - 0.002,3))
    or (Arredondar(Peso,3) < Arredondar(strToFloat('0,020'),3)) then
      Exit;

    if not BalancaPronta then
      exit
    else
      BalancaPronta := false;

  PesoAnterior := Peso;

  MensagemMemo(' ', 'Aguarde', 'Lendo balança...', clYellow, 0, 3);

  sqlcon2.Close;
  sqlcon2.SQL.Text := 'select max(tbcomanda.comanda) as comanda from tbcomanda';
  sqlcon2.Open;

  sqlcon.Close;
  sqlcon.SQL.Text := 'select tbprod.descricao, tbprod.pvendaa, ' +
    '(tbprod.pVendaa * ' + Trocavirgula(Peso) + ') as vrTotal,  ' +
    'tbunmed.descricao as un ' + 'from tbprod ' +
    'left join tbunmed on tbunmed.codigo = tbprod.unmed ' +
    'where tbprod.codigo = ' + sCodProd;
  sqlcon.Open;

  if sqlcon.IsEmpty then
    Exit;

  codProdSalva1 := sCodProd;

  if (Parametro('TIPO_PESQ_CODPROD') = 'I')
  or (Parametro('TIPO_PESQ_CODPROD') = 'P') then
  begin
       sCodProd := codProdSalva1;
       codProdSalva2     := '';
  end
  else
       if codProdSalva1 <> sCodProd then
            codProdSalva2 := sCodProd
       else
            codProdSalva2 := '';

  cdsComandaItem.Append;
  cdsComandaItemCOMANDA.AsInteger          := sqlcon2.FieldByName('comanda').AsInteger + 1;
  cdsComandaItemCODPROD.AsString           := codProdSalva1;
  cdsComandaItemCODPROD_2.AsString         := codProdSalva2;
  cdsComandaItemDESCRICAO.AsString         := sqlcon.FieldByName('descricao').AsString;
  cdsComandaItemQTD.AsFloat                := Peso;
  cdsComandaItemVR_UNIT.AsFloat            := sqlcon.FieldByName('vrTotal').AsFloat;
  cdsComandaItemFUNCIONARIO.AsString       := '';
  cdsComandaItemID_INGRE.AsInteger         := 0;
  cdsComandaItemVIAGEM.AsString            := 'N';
  cdsComandaItemTAXAATENDIMENTO.AsString   := 'N';

  cdsComandaItem.Post;
  cdsComandaItem.ApplyUpdates(-1);

  MensagemMemo(' ', 'Leitura concluída!', 'Por favor retire seu prato.',
                clLime, peso, 0);

  try
    application.CreateForm(Tfrelpagamento, frelpagamento);
    frelpagamento.rlNomeEmp.Lines.Add(IfThen(dm.tbempEMPRESA.AsString = '',
      dm.tbempNOME.AsString, dm.tbempEMPRESA.AsString));
    frelpagamento.rlComanda2.Caption := 'Comanda: ' + cdsComandaItemCOMANDA.AsString;
    frelpagamento.Imprimir;
  finally
    freeAndNil(frelpagamento);
  end;
end;

procedure TfPrinc.btSairClick(Sender: TObject);
begin
    Timer1.enabled := false;
    close;
end;

procedure TfPrinc.FACBrBALLePeso(Peso: Double; Resposta: AnsiString);
begin
  if Peso <= 0.000 then
  begin
    BalancaPronta := True;
    PesoAnterior  := 0.000;

    MensagemMemo(' ', 'Balança pronta.', 'Coloque o seu prato!', clLime, 0, 0);
  end

  else if Peso > 0 then
    lerBalanca(Peso);
end;

procedure TfPrinc.FormDestroy(Sender: TObject);
begin
  // Desconecta da balança e libera o objeto
  freeAndNil(FACBrBAL);
  cdsComandaItem.Close;
  dm.tbemp.Close;
end;

procedure TfPrinc.FormResize(Sender: TObject);
begin
    pnlTitulo.Width := fPrinc.Width;
end;

procedure TfPrinc.FormShow(Sender: TObject);
begin
  sCodProd := dm.sCodProd;

  //cdsProd.CreateDataSet;
  dm.tbemp.Open;
  cdsComandaItem.Open;

  sqlcon.Close;
  sqlcon.SQL.Text := ' select pvendaa from tbprod where codigo = ' +
                      quotedStr(sCodProd);
  sqlcon.Open;

  if sqlcon.IsEmpty then
  begin
    application.Messagebox('Produto invalido!', 'Atenção', mb_iconexclamation);
    Close;
  end;

  vrvenda := sqlcon.FieldByName('pvendaa').AsFloat;

  MensagemMemo('Balança pronta.', 'Coloque o seu prato!','', clLime, 0, 0);

  vrPeso.Caption := '0.00 kg';
  vrProd.Caption := 'R$ 0,00';

  Application.Title := 'Balança Automatica';

  BalancaPronta  := true;
  ConfiguraBal;
  Timer1.Enabled := true;
end;

end.