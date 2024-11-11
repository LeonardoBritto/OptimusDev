unit RTTI.FieldName;

interface

uses
  System.SysUtils;

type
  FieldName = class(TCustomAttribute)
    private
    FNome: string;
    public
    constructor Create(const ANome: string);
    property Nome: string read FNome write FNome;
  end;

implementation

{ FieldName }

constructor FieldName.Create(const ANome: string);
begin
  FNome := ANome;
end;

end.
