.class public final Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;
.super Ljava/lang/Object;
.source "BleRssiRangingParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/ble/rssi/BleRssiRangingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mPeerBluetoothAddress:Ljava/lang/String;

.field private blacklist mRangingUpdateRate:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPeerBluetoothAddress(Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;->mPeerBluetoothAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRangingUpdateRate(Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;->mRangingUpdateRate:I

    return p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "peerBluetoothAddress"    # Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput v0, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;->mRangingUpdateRate:I

    .line 123
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 128
    iput-object p1, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;->mPeerBluetoothAddress:Ljava/lang/String;

    .line 129
    return-void

    .line 125
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bluetooth address is not in 00:11:22:33:AA:BB format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/ranging/ble/rssi/BleRssiRangingParams;
    .registers 3

    .line 151
    new-instance v0, Landroid/ranging/ble/rssi/BleRssiRangingParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/ble/rssi/BleRssiRangingParams;-><init>(Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;Landroid/ranging/ble/rssi/BleRssiRangingParams-IA;)V

    return-object v0
.end method

.method public whitelist setRangingUpdateRate(I)Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;
    .registers 2
    .param p1, "updateRate"    # I

    .line 140
    iput p1, p0, Landroid/ranging/ble/rssi/BleRssiRangingParams$Builder;->mRangingUpdateRate:I

    .line 141
    return-object p0
.end method
