# XC7010-1CLG400C
export XRAY_PART=xc7z010clg400-1
export XRAY_PINCFG=ZYBOZ7-SWBUT
export XRAY_DIN_N_LARGE=4
export XRAY_DOUT_N_LARGE=4

# For generating DB
export XRAY_PIN_00="G15"
export XRAY_PIN_01="P15"
export XRAY_PIN_02="W13"
export XRAY_PIN_03="T16"
export XRAY_PIN_04="K18"
export XRAY_PIN_05="P16"
export XRAY_PIN_06="K19"

# ROI is in top right
export XRAY_ROI_LARGE="SLICE_X22Y50:SLICE_X43Y99"

# HCLK Tile
export XRAY_ROI_HCLK="CLK_HROW_TOP_R_X82Y78/CLK_HROW_CK_BUFHCLK_R0"

# PITCH
export XRAY_PITCH=1

# INT_L/R for DOUT and DIN
export XRAY_ROI_DIN_INT_L_X=
export XRAY_ROI_DIN_INT_R_X="31"
export XRAY_ROI_DOUT_INT_L_X=
export XRAY_ROI_DOUT_INT_R_X="29"

# PIPS for DOUT and DIN
export XRAY_ROI_DIN_LPIP=
export XRAY_ROI_DIN_RPIP="WW2BEG1"
export XRAY_ROI_DOUT_LPIP=
export XRAY_ROI_DOUT_RPIP="EE2BEG0"

source $XRAY_DIR/utils/environment.sh
