.class public final Landroid/ranging/ble/rssi/BleRssiRangingParams;
.super Ljava/lang/Object;
.source "BleRssiRangingParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/ble/rssi/BleRssiRangingParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPeerBluetoothAddress:Ljava/lang/String;

.field private final blacklist mRangingUpdateRate:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Landroid/ranging/ble/rssi/BleRssiRangingParams$1;

    invoke-direct {v0}, Landroid/ranging/ble/rssi/BleRssiRangingParams$1;-><init>()V

    sput-object v0, Landroid/ranging/ble/rssi/BleRssiRangingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams;->mPeerBluetoothAddress:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams;->mRangingUpdateRate:I

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/ble/rssi/BleRssiRangingParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/ble/rssi/BleRssiRangingParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;->-$$Nest$fgetmPeerBluetoothAddress(Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams;->mPeerBluetoothAddress:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;->-$$Nest$fgetmRangingUpdateRate(Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams;->mRangingUpdateRate:I

    .line 47
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;Landroid/ranging/ble/rssi/BleRssiRangingParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/ble/rssi/BleRssiRangingParams;-><init>(Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 160
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 161
    :cond_4
    instance-of v1, p1, Landroid/ranging/ble/rssi/BleRssiRangingParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    move-object v1, p1

    check-cast v1, Landroid/ranging/ble/rssi/BleRssiRangingParams;

    .line 162
    .local v1, "that":Landroid/ranging/ble/rssi/BleRssiRangingParams;
    iget v3, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams;->mRangingUpdateRate:I

    iget v4, v1, Landroid/ranging/ble/rssi/BleRssiRangingParams;->mRangingUpdateRate:I

    if-ne v3, v4, :cond_1d

    iget-object v3, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams;->mPeerBluetoothAddress:Ljava/lang/String;

    iget-object v4, v1, Landroid/ranging/ble/rssi/BleRssiRangingParams;->mPeerBluetoothAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    return v0

    .line 161
    .end local v1    # "that":Landroid/ranging/ble/rssi/BleRssiRangingParams;
    :cond_1f
    return v2
.end method

.method public whitelist getPeerBluetoothAddress()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams;->mPeerBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRangingUpdateRate()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams;->mRangingUpdateRate:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 171
    iget-object v0, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams;->mPeerBluetoothAddress:Ljava/lang/String;

    iget v1, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams;->mRangingUpdateRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 56
    iget-object v0, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams;->mPeerBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget v0, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams;->mRangingUpdateRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    return-void
.end method
