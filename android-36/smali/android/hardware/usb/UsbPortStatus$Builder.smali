.class public final Landroid/hardware/usb/UsbPortStatus$Builder;
.super Ljava/lang/Object;
.source "UsbPortStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbPortStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mComplianceWarnings:[I

.field private blacklist mContaminantDetectionStatus:I

.field private blacklist mContaminantProtectionStatus:I

.field private blacklist mCurrentDataRole:I

.field private blacklist mCurrentMode:I

.field private blacklist mCurrentPowerRole:I

.field private blacklist mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

.field private blacklist mPlugState:I

.field private blacklist mPowerBrickConnectionStatus:I

.field private blacklist mPowerTransferLimited:Z

.field private blacklist mSupportedRoleCombinations:I

.field private blacklist mUsbDataStatus:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentMode:I

    .line 800
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentPowerRole:I

    .line 801
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentDataRole:I

    .line 802
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantProtectionStatus:I

    .line 803
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantDetectionStatus:I

    .line 804
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mUsbDataStatus:I

    .line 805
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerBrickConnectionStatus:I

    .line 806
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mComplianceWarnings:[I

    .line 807
    iput v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPlugState:I

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 809
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/hardware/usb/UsbPortStatus;
    .registers 14

    .line 935
    new-instance v0, Landroid/hardware/usb/UsbPortStatus;

    iget v1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentMode:I

    iget v2, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentPowerRole:I

    iget v3, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentDataRole:I

    iget v4, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mSupportedRoleCombinations:I

    iget v5, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantProtectionStatus:I

    iget v6, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantDetectionStatus:I

    iget v7, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mUsbDataStatus:I

    iget-boolean v8, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerTransferLimited:Z

    iget v9, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerBrickConnectionStatus:I

    iget-object v10, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mComplianceWarnings:[I

    iget v11, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPlugState:I

    iget-object v12, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    invoke-direct/range {v0 .. v12}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    .line 940
    .local v0, "status":Landroid/hardware/usb/UsbPortStatus;
    return-object v0
.end method

.method public blacklist setComplianceWarnings([I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 3
    .param p1, "complianceWarnings"    # [I

    .line 902
    if-nez p1, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_7

    .line 903
    :cond_6
    move-object v0, p1

    :goto_7
    iput-object v0, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mComplianceWarnings:[I

    .line 904
    return-object p0
.end method

.method public blacklist setContaminantStatus(II)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 3
    .param p1, "contaminantProtectionStatus"    # I
    .param p2, "contaminantDetectionStatus"    # I

    .line 855
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantProtectionStatus:I

    .line 856
    iput p2, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mContaminantDetectionStatus:I

    .line 857
    return-object p0
.end method

.method public blacklist setCurrentMode(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2
    .param p1, "currentMode"    # I

    .line 818
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentMode:I

    .line 819
    return-object p0
.end method

.method public blacklist setCurrentRoles(II)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 3
    .param p1, "currentPowerRole"    # I
    .param p2, "currentDataRole"    # I

    .line 830
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentPowerRole:I

    .line 831
    iput p2, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mCurrentDataRole:I

    .line 832
    return-object p0
.end method

.method public blacklist setDisplayPortAltModeInfo(Landroid/hardware/usb/DisplayPortAltModeInfo;)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2
    .param p1, "displayPortAltModeInfo"    # Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 926
    iput-object p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 927
    return-object p0
.end method

.method public blacklist setPlugState(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2
    .param p1, "plugState"    # I

    .line 914
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPlugState:I

    .line 915
    return-object p0
.end method

.method public blacklist setPowerBrickConnectionStatus(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2
    .param p1, "powerBrickConnectionStatus"    # I

    .line 890
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerBrickConnectionStatus:I

    .line 891
    return-object p0
.end method

.method public blacklist setPowerTransferLimited(Z)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2
    .param p1, "powerTransferLimited"    # Z

    .line 867
    iput-boolean p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mPowerTransferLimited:Z

    .line 868
    return-object p0
.end method

.method public blacklist setSupportedRoleCombinations(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2
    .param p1, "supportedRoleCombinations"    # I

    .line 842
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mSupportedRoleCombinations:I

    .line 843
    return-object p0
.end method

.method public blacklist setUsbDataStatus(I)Landroid/hardware/usb/UsbPortStatus$Builder;
    .registers 2
    .param p1, "usbDataStatus"    # I

    .line 878
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus$Builder;->mUsbDataStatus:I

    .line 879
    return-object p0
.end method
