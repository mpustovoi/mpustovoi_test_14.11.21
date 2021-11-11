﻿function IsLeapYear(y: integer): boolean;
begin
  if (y mod 4 = 0) and (y mod 100 = 0) or (y mod 400 = 0) then
    result := True
  else
    result := False;
end;

function SecondsInMinute(m: integer) := m * 60;

function LaterInYear(d1,d2: integer): integer;
begin
  if d1 > d2 then result := d1
  else result := d2;
end;

function DaysInYear(y: integer): integer;
begin
  if IsLeapYear(y) then result := 366
  else result := 365;
end;

function DaysInYearRange(y1,y2:integer): integer;
begin
  result := 0;
  for var i := y1 to y2 do
    if IsLeapYear(i) then
      result += 366
    else result += 365;
end;

function SecondsInHours(h: integer) := h * 3600;

begin
  
end.