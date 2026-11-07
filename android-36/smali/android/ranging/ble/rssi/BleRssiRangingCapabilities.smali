.class public Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;
.super Ljava/lang/Object;
.source "BleRssiRangingCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/ranging/RangingCapabilities$TechnologyCapabilities;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBluetoothAddress:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Landroid/ranging/ble/rssi/BleRssiRangingCapabilities$1;

    invoke-direct {v0}, Landroid/ranging/ble/rssi/BleRssiRangingCapabilities$1;-><init>()V

    sput-object v0, Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;->mBluetoothAddress:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;->mBluetoothAddress:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBluetoothAddress()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;->mBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTechnology()I
    .registers 2

    .line 62
    const/4 v0, 0x3

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BleRssiCapabilities{mBluetoothAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 72
    iget-object v0, p0, Landroid/ranging/ble/rssi/BleRssiRangingCapabilities;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return-void
.end method
