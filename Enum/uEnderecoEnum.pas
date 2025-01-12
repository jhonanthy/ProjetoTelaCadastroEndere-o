unit uEnderecoEnum;

interface

type
  TTipoOperacao =   (toSelect = 0, toInsert = 1, toUpdate = 2, toDelete = 3, toInsertOrUpdate = 4, toNewInsert = 5, toFilter = 6);
  TTipoRetornoApi = (toJson = 0, toXML = 1);
  TTipoConsulta =   (toCEP = 0, toEnderecoCompleto = 1);
implementation

end.
