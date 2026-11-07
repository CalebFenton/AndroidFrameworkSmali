.class public final Landroid/hardware/usb/ParcelableUsbPort;
.super Ljava/lang/Object;
.source "ParcelableUsbPort.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/ParcelableUsbPort;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mSupportedAltModesMask:I

.field private final blacklist mSupportedContaminantProtectionModes:I

.field private final blacklist mSupportedModes:I

.field private final blacklist mSupportsComplianceWarnings:Z

.field private final blacklist mSupportsEnableContaminantPresenceDetection:Z

.field private final blacklist mSupportsEnableContaminantPresenceProtection:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Landroid/hardware/usb/ParcelableUsbPort$1;

    invoke-direct {v0}, Landroid/hardware/usb/ParcelableUsbPort$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/ParcelableUsbPort;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IIZZZI)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "supportedModes"    # I
    .param p3, "supportedContaminantProtectionModes"    # I
    .param p4, "supportsEnableContaminantPresenceProtection"    # Z
    .param p5, "supportsEnableContaminantPresenceDetection"    # Z
    .param p6, "supportsComplianceWarnings"    # Z
    .param p7, "supportedAltModesMask"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/hardware/usb/ParcelableUsbPort;->mId:Ljava/lang/String;

    .line 47
    iput p2, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedModes:I

    .line 48
    iput p3, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedContaminantProtectionModes:I

    .line 49
    iput-boolean p4, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    .line 51
    iput-boolean p5, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    .line 53
    iput-boolean p6, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsComplianceWarnings:Z

    .line 55
    iput p7, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedAltModesMask:I

    .line 56
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;IIZZZILandroid/hardware/usb/ParcelableUsbPort-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/hardware/usb/ParcelableUsbPort;-><init>(Ljava/lang/String;IIZZZI)V

    return-void
.end method

.method public static blacklist of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;
    .registers 9
    .param p0, "port"    # Landroid/hardware/usb/UsbPort;

    .line 66
    new-instance v0, Landroid/hardware/usb/ParcelableUsbPort;

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v2

    .line 67
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getSupportedContaminantProtectionModes()I

    move-result v3

    .line 68
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceProtection()Z

    move-result v4

    .line 69
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v5

    .line 70
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->supportsComplianceWarnings()Z

    move-result v6

    .line 71
    invoke-virtual {p0}, Landroid/hardware/usb/UsbPort;->getSupportedAltModesMask()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Landroid/hardware/usb/ParcelableUsbPort;-><init>(Ljava/lang/String;IIZZZI)V

    .line 66
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getUsbPort(Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbPort;
    .registers 11
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;

    .line 82
    new-instance v0, Landroid/hardware/usb/UsbPort;

    iget-object v2, p0, Landroid/hardware/usb/ParcelableUsbPort;->mId:Ljava/lang/String;

    iget v3, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedModes:I

    iget v4, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedContaminantProtectionModes:I

    iget-boolean v5, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    iget-boolean v6, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    iget-boolean v7, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsComplianceWarnings:Z

    iget v8, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedAltModesMask:I

    move-object v1, p1

    .end local p1    # "usbManager":Landroid/hardware/usb/UsbManager;
    .local v1, "usbManager":Landroid/hardware/usb/UsbManager;
    invoke-direct/range {v0 .. v8}, Landroid/hardware/usb/UsbPort;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZZI)V

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget-object v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedContaminantProtectionModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-boolean v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceProtection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 100
    iget-boolean v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsEnableContaminantPresenceDetection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 101
    iget-boolean v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportsComplianceWarnings:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 102
    iget v0, p0, Landroid/hardware/usb/ParcelableUsbPort;->mSupportedAltModesMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    return-void
.end method
