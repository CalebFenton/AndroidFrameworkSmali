.class Landroid/hardware/usb/UsbPortStatus$1;
.super Ljava/lang/Object;
.source "UsbPortStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbPortStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/UsbPortStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbPortStatus;
    .registers 16
    .param p1, "in"    # Landroid/os/Parcel;

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 749
    .local v1, "currentMode":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 750
    .local v2, "currentPowerRole":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 751
    .local v3, "currentDataRole":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 752
    .local v4, "supportedRoleCombinations":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 753
    .local v5, "contaminantProtectionStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 754
    .local v6, "contaminantDetectionStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 755
    .local v7, "usbDataStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 756
    .local v8, "powerTransferLimited":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 757
    .local v9, "powerBrickConnectionStatus":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v10

    .line 758
    .local v10, "complianceWarnings":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 759
    .local v11, "plugState":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 761
    .local v13, "supportsDisplayPortAltMode":Z
    if-eqz v13, :cond_3c

    .line 762
    sget-object v0, Landroid/hardware/usb/DisplayPortAltModeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/DisplayPortAltModeInfo;

    move-object v12, v0

    .local v0, "displayPortAltModeInfo":Landroid/hardware/usb/DisplayPortAltModeInfo;
    goto :goto_3e

    .line 764
    .end local v0    # "displayPortAltModeInfo":Landroid/hardware/usb/DisplayPortAltModeInfo;
    :cond_3c
    const/4 v0, 0x0

    move-object v12, v0

    .line 766
    .local v12, "displayPortAltModeInfo":Landroid/hardware/usb/DisplayPortAltModeInfo;
    :goto_3e
    new-instance v0, Landroid/hardware/usb/UsbPortStatus;

    invoke-direct/range {v0 .. v12}, Landroid/hardware/usb/UsbPortStatus;-><init>(IIIIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 745
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbPortStatus$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/usb/UsbPortStatus;
    .registers 3
    .param p1, "size"    # I

    .line 775
    new-array v0, p1, [Landroid/hardware/usb/UsbPortStatus;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 745
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbPortStatus$1;->newArray(I)[Landroid/hardware/usb/UsbPortStatus;

    move-result-object p1

    return-object p1
.end method
