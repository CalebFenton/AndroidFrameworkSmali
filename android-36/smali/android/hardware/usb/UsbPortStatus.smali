.class public final Landroid/hardware/usb/UsbPortStatus;
.super Ljava/lang/Object;
.source "UsbPortStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/UsbPortStatus$Builder;,
        Landroid/hardware/usb/UsbPortStatus$PowerBrickConnectionStatus;,
        Landroid/hardware/usb/UsbPortStatus$UsbDataStatus;,
        Landroid/hardware/usb/UsbPortStatus$PlugState;,
        Landroid/hardware/usb/UsbPortStatus$ComplianceWarning;,
        Landroid/hardware/usb/UsbPortStatus$UsbPortMode;,
        Landroid/hardware/usb/UsbPortStatus$ContaminantProtectionStatus;,
        Landroid/hardware/usb/UsbPortStatus$ContaminantDetectionStatus;,
        Landroid/hardware/usb/UsbPortStatus$UsbDataRole;,
        Landroid/hardware/usb/UsbPortStatus$UsbPowerRole;
    }
.end annotation


# static fields
.field public static final whitelist COMPLIANCE_WARNING_BC_1_2:I = 0x3

.field public static final whitelist COMPLIANCE_WARNING_DEBUG_ACCESSORY:I = 0x2

.field public static final whitelist COMPLIANCE_WARNING_ENUMERATION_FAIL:I = 0x7

.field public static final whitelist COMPLIANCE_WARNING_FLAKY_CONNECTION:I = 0x8

.field public static final whitelist COMPLIANCE_WARNING_INPUT_POWER_LIMITED:I = 0x5

.field public static final whitelist COMPLIANCE_WARNING_MISSING_DATA_LINES:I = 0x6

.field public static final whitelist COMPLIANCE_WARNING_MISSING_RP:I = 0x4

.field public static final whitelist COMPLIANCE_WARNING_OTHER:I = 0x1

.field public static final whitelist COMPLIANCE_WARNING_UNRELIABLE_IO:I = 0x9

.field public static final blacklist CONTAMINANT_DETECTION_DETECTED:I = 0x3

.field public static final blacklist CONTAMINANT_DETECTION_DISABLED:I = 0x1

.field public static final blacklist CONTAMINANT_DETECTION_NOT_DETECTED:I = 0x2

.field public static final blacklist CONTAMINANT_DETECTION_NOT_SUPPORTED:I = 0x0

.field public static final blacklist CONTAMINANT_PROTECTION_DISABLED:I = 0x8

.field public static final blacklist CONTAMINANT_PROTECTION_FORCE_DISABLE:I = 0x4

.field public static final blacklist CONTAMINANT_PROTECTION_NONE:I = 0x0

.field public static final blacklist CONTAMINANT_PROTECTION_SINK:I = 0x1

.field public static final blacklist CONTAMINANT_PROTECTION_SOURCE:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/UsbPortStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DATA_ROLE_DEVICE:I = 0x2

.field public static final whitelist DATA_ROLE_HOST:I = 0x1

.field public static final whitelist DATA_ROLE_NONE:I = 0x0

.field public static final whitelist DATA_STATUS_DISABLED_CONTAMINANT:I = 0x4

.field public static final whitelist DATA_STATUS_DISABLED_DEBUG:I = 0x20

.field public static final whitelist DATA_STATUS_DISABLED_DOCK:I = 0x8

.field public static final whitelist DATA_STATUS_DISABLED_DOCK_DEVICE_MODE:I = 0x80

.field public static final whitelist DATA_STATUS_DISABLED_DOCK_HOST_MODE:I = 0x40

.field public static final whitelist DATA_STATUS_DISABLED_FORCE:I = 0x10

.field public static final whitelist DATA_STATUS_DISABLED_OVERHEAT:I = 0x2

.field public static final whitelist DATA_STATUS_ENABLED:I = 0x1

.field public static final whitelist DATA_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist MODE_AUDIO_ACCESSORY:I = 0x4

.field public static final whitelist MODE_DEBUG_ACCESSORY:I = 0x8

.field public static final whitelist MODE_DFP:I = 0x2

.field public static final blacklist MODE_DUAL:I = 0x3

.field public static final whitelist MODE_NONE:I = 0x0

.field public static final whitelist MODE_UFP:I = 0x1

.field public static final whitelist PLUG_STATE_PLUGGED_ORIENTATION_FLIPPED:I = 0x4

.field public static final whitelist PLUG_STATE_PLUGGED_ORIENTATION_NORMAL:I = 0x3

.field public static final whitelist PLUG_STATE_PLUGGED_ORIENTATION_UNKNOWN:I = 0x2

.field public static final whitelist PLUG_STATE_UNKNOWN:I = 0x0

.field public static final whitelist PLUG_STATE_UNPLUGGED:I = 0x1

.field public static final whitelist POWER_BRICK_STATUS_CONNECTED:I = 0x1

.field public static final whitelist POWER_BRICK_STATUS_DISCONNECTED:I = 0x2

.field public static final whitelist POWER_BRICK_STATUS_UNKNOWN:I = 0x0

.field public static final whitelist POWER_ROLE_NONE:I = 0x0

.field public static final whitelist POWER_ROLE_SINK:I = 0x2

.field public static final whitelist POWER_ROLE_SOURCE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "UsbPortStatus"


# instance fields
.field private final blacklist mComplianceWarnings:[I

.field private final blacklist mContaminantDetectionStatus:I

.field private final blacklist mContaminantProtectionStatus:I

.field private final greylist-max-o mCurrentDataRole:I

.field private final greylist-max-o mCurrentMode:I

.field private final greylist-max-o mCurrentPowerRole:I

.field private final blacklist mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

.field private final blacklist mPlugState:I

.field private final blacklist mPowerBrickConnectionStatus:I

.field private final blacklist mPowerTransferLimited:Z

.field private final greylist-max-o mSupportedRoleCombinations:I

.field private final blacklist mUsbDataStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 744
    new-instance v0, Landroid/hardware/usb/UsbPortStatus$1;

    invoke-direct {v0}, Landroid/hardware/usb/UsbPortStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbPortStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIII)V
    .registers 21
    .param p1, "currentMode"    # I
    .param p2, "currentPowerRole"    # I
    .param p3, "currentDataRole"    # I
    .param p4, "supportedRoleCombinations"    # I
    .param p5, "contaminantProtectionStatus"    # I
    .param p6, "contaminantDetectionStatus"    # I

    .line 518
    const/4 v0, 0x0

    new-array v11, v0, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v13}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    .line 522
    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIZI)V
    .registers 24
    .param p1, "currentMode"    # I
    .param p2, "currentPowerRole"    # I
    .param p3, "currentDataRole"    # I
    .param p4, "supportedRoleCombinations"    # I
    .param p5, "contaminantProtectionStatus"    # I
    .param p6, "contaminantDetectionStatus"    # I
    .param p7, "usbDataStatus"    # I
    .param p8, "powerTransferLimited"    # Z
    .param p9, "powerBrickConnectionStatus"    # I

    .line 508
    const/4 v0, 0x0

    new-array v11, v0, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v13}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    .line 512
    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V
    .registers 14
    .param p1, "currentMode"    # I
    .param p2, "currentPowerRole"    # I
    .param p3, "currentDataRole"    # I
    .param p4, "supportedRoleCombinations"    # I
    .param p5, "contaminantProtectionStatus"    # I
    .param p6, "contaminantDetectionStatus"    # I
    .param p7, "usbDataStatus"    # I
    .param p8, "powerTransferLimited"    # Z
    .param p9, "powerBrickConnectionStatus"    # I
    .param p10, "complianceWarnings"    # [I
    .param p11, "plugState"    # I
    .param p12, "displayPortAltModeInfo"    # Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput p1, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    .line 475
    iput p2, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    .line 476
    iput p3, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    .line 477
    iput p4, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    .line 478
    iput p5, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantProtectionStatus:I

    .line 479
    iput p6, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantDetectionStatus:I

    .line 484
    and-int/lit16 v0, p7, 0xc0

    .line 486
    .local v0, "disabledDockModes":I
    if-eqz v0, :cond_16

    .line 488
    or-int/lit8 p7, p7, 0x8

    goto :goto_18

    .line 491
    :cond_16
    and-int/lit8 p7, p7, -0x9

    .line 494
    :goto_18
    iput p7, p0, Landroid/hardware/usb/UsbPortStatus;->mUsbDataStatus:I

    .line 495
    iput-boolean p8, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerTransferLimited:Z

    .line 496
    iput p9, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerBrickConnectionStatus:I

    .line 497
    iput-object p10, p0, Landroid/hardware/usb/UsbPortStatus;->mComplianceWarnings:[I

    .line 498
    iput p11, p0, Landroid/hardware/usb/UsbPortStatus;->mPlugState:I

    .line 499
    iput-object p12, p0, Landroid/hardware/usb/UsbPortStatus;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 500
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getComplianceWarnings()[I
    .registers 2

    .line 666
    iget-object v0, p0, Landroid/hardware/usb/UsbPortStatus;->mComplianceWarnings:[I

    return-object v0
.end method

.method public blacklist getContaminantDetectionStatus()I
    .registers 2

    .line 607
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantDetectionStatus:I

    return v0
.end method

.method public blacklist getContaminantProtectionStatus()I
    .registers 2

    .line 616
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantProtectionStatus:I

    return v0
.end method

.method public whitelist getCurrentDataRole()I
    .registers 2

    .line 561
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    return v0
.end method

.method public whitelist getCurrentMode()I
    .registers 2

    .line 541
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    return v0
.end method

.method public whitelist getCurrentPowerRole()I
    .registers 2

    .line 551
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    return v0
.end method

.method public whitelist getDisplayPortAltModeInfo()Landroid/hardware/usb/DisplayPortAltModeInfo;
    .registers 2

    .line 685
    iget-object v0, p0, Landroid/hardware/usb/UsbPortStatus;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, p0, Landroid/hardware/usb/UsbPortStatus;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    :goto_8
    return-object v0
.end method

.method public whitelist getPlugState()I
    .registers 2

    .line 674
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPlugState:I

    return v0
.end method

.method public whitelist getPowerBrickConnectionStatus()I
    .registers 2

    .line 651
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerBrickConnectionStatus:I

    return v0
.end method

.method public whitelist getSupportedRoleCombinations()I
    .registers 2

    .line 598
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    return v0
.end method

.method public whitelist getUsbDataStatus()I
    .registers 2

    .line 630
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mUsbDataStatus:I

    return v0
.end method

.method public whitelist isConnected()Z
    .registers 2

    .line 530
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isPdCompliant()Z
    .registers 4

    .line 588
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v0}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 589
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 590
    invoke-virtual {p0, v1, v0}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 591
    invoke-virtual {p0, v1, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 588
    :goto_1c
    return v1
.end method

.method public whitelist isPowerTransferLimited()Z
    .registers 2

    .line 640
    iget-boolean v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerTransferLimited:Z

    return v0
.end method

.method public whitelist isRoleCombinationSupported(II)Z
    .registers 5
    .param p1, "powerRole"    # I
    .param p2, "dataRole"    # I

    .line 575
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    .line 576
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 575
    :goto_c
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsbPortStatus{connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    .line 692
    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentPowerRole="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    .line 693
    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentDataRole="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    .line 694
    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", supportedRoleCombinations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    .line 696
    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->roleCombinationsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contaminantDetectionStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 698
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contaminantProtectionStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 700
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantProtectionStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", usbDataStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 702
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->usbDataStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPowerTransferLimited="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 704
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", powerBrickConnectionStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 707
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->powerBrickConnectionStatusToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", complianceWarnings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 709
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getComplianceWarnings()[I

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/usb/UsbPort;->complianceWarningsToString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", plugState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 711
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPortStatus;->getPlugState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", displayPortAltModeInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/usb/UsbPortStatus;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    .local v0, "mString":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 725
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentPowerRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mCurrentDataRole:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mSupportedRoleCombinations:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 729
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantProtectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 730
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mContaminantDetectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mUsbDataStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    iget-boolean v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerTransferLimited:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 733
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPowerBrickConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget-object v0, p0, Landroid/hardware/usb/UsbPortStatus;->mComplianceWarnings:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 735
    iget v0, p0, Landroid/hardware/usb/UsbPortStatus;->mPlugState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    iget-object v0, p0, Landroid/hardware/usb/UsbPortStatus;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_40

    .line 737
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_49

    .line 739
    :cond_40
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 740
    iget-object v0, p0, Landroid/hardware/usb/UsbPortStatus;->mDisplayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/usb/DisplayPortAltModeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 742
    :goto_49
    return-void
.end method
