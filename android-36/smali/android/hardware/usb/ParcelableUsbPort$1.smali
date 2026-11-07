.class Landroid/hardware/usb/ParcelableUsbPort$1;
.super Ljava/lang/Object;
.source "ParcelableUsbPort.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/ParcelableUsbPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/ParcelableUsbPort;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/ParcelableUsbPort;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    .local v2, "supportedModes":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 112
    .local v3, "supportedContaminantProtectionModes":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 113
    .local v4, "supportsEnableContaminantPresenceProtection":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 114
    .local v5, "supportsEnableContaminantPresenceDetection":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 115
    .local v6, "supportsComplianceWarnings":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 117
    .local v7, "supportedAltModesMask":I
    new-instance v0, Landroid/hardware/usb/ParcelableUsbPort;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/hardware/usb/ParcelableUsbPort;-><init>(Ljava/lang/String;IIZZZILandroid/hardware/usb/ParcelableUsbPort-IA;)V

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

    .line 106
    invoke-virtual {p0, p1}, Landroid/hardware/usb/ParcelableUsbPort$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/usb/ParcelableUsbPort;
    .registers 3
    .param p1, "size"    # I

    .line 127
    new-array v0, p1, [Landroid/hardware/usb/ParcelableUsbPort;

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

    .line 106
    invoke-virtual {p0, p1}, Landroid/hardware/usb/ParcelableUsbPort$1;->newArray(I)[Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object p1

    return-object p1
.end method
