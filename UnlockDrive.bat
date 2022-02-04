SET /P BLKey= Enter System Drive BitLocker Password:
SET /P Drive= Input Drive to Unlock
manage-bde -unlock %Drive% -RecoveryPassword %BLKey%
pause