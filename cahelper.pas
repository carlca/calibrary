unit caHelper;

{$if fpc_fullversion < 30301}{$error this program needs trunk}{$endif}
{$mode objfpc}{$H+}
{$modeswitch typehelpers}
{$modeswitch multihelpers}

interface

uses
  Classes, SysUtils;

type

  TcaIntegerHelper = type helper for Integer
  public
    function Pred: Integer;
  end;

  TcaInt64Helper = type helper for int64
  public
    function Pred: int64;
  end;

implementation

function TcaIntegerHelper.Pred: Integer;
begin
  Result := Self - 1;
end;

function TcaInt64Helper.Pred: int64;
begin
  Result := Self - 1;
end;


end.

