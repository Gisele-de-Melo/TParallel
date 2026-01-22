unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Threading, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MemoLog: TMemo;
    BtnProcessar: TButton;
    procedure BtnProcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnProcessarClick(Sender: TObject);
var
  Numeros: TArray<Integer>;
  Resultado: TArray<Integer>;
  I: Integer;
begin
  MemoLog.Clear;

  // Inicializa o array de entrada
  SetLength(Numeros, 10);
  for I := 0 to High(Numeros) do
    Numeros[I] := I + 1;

  // Inicializa o array de saída
  SetLength(Resultado, Length(Numeros));

  // Processamento paralelo
  TParallel.For(0, High(Numeros),
    procedure(Index: Integer)
    begin
      // Simula processamento pesado
      Sleep(500);

      // Cálculo simples
      Resultado[Index] := Numeros[Index] * 2;
    end
  );

  // Atualiza a interface após o processamento
  for I := 0 to High(Resultado) do
    MemoLog.Lines.Add(
      Format('Resultado[%d] = %d', [I, Resultado[I]])
    );
end;

end.
