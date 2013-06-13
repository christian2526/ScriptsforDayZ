//// Small
if (
(_Transporter isKindOf "AH6X_DZ") ||
(_Transporter isKindOf "AN2_DZ") // No OR || after the last entry!!
) then { _SelectedTransporterTypeS = true; };

//// Medium
if (
(_Transporter isKindOf "UH1H_DZ") // No OR || after the last entry!!
) then { _SelectedTransporterTypeM = true; };

//// Large
if (
(_Transporter isKindOf "CH_47F_EP1") ||
(_Transporter isKindOf "Mi17_DZ")
) then { _SelectedTransporterTypeL = true; };

//// XTRA Large
if (
(_Transporter isKindOf "MV22") ||
(_Transporter isKindOf "C130J") // No OR || after the last entry!!
) then { _SelectedTransporterTypeXL = true; };