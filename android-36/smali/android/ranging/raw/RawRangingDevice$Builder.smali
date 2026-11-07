.class public final Landroid/ranging/raw/RawRangingDevice$Builder;
.super Ljava/lang/Object;
.source "RawRangingDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/raw/RawRangingDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBleCsRangingParams:Landroid/ranging/ble/cs/BleCsRangingParams;

.field private blacklist mBleRssiRangingParams:Landroid/ranging/ble/rssi/BleRssiRangingParams;

.field private blacklist mRangingDevice:Landroid/ranging/RangingDevice;

.field private blacklist mRttRangingParams:Landroid/ranging/wifi/rtt/RttRangingParams;

.field private blacklist mUwbRangingParams:Landroid/ranging/uwb/UwbRangingParams;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBleCsRangingParams(Landroid/ranging/raw/RawRangingDevice$Builder;)Landroid/ranging/ble/cs/BleCsRangingParams;
    .registers 1

    iget-object p0, p0, Landroid/ranging/raw/RawRangingDevice$Builder;->mBleCsRangingParams:Landroid/ranging/ble/cs/BleCsRangingParams;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBleRssiRangingParams(Landroid/ranging/raw/RawRangingDevice$Builder;)Landroid/ranging/ble/rssi/BleRssiRangingParams;
    .registers 1

    iget-object p0, p0, Landroid/ranging/raw/RawRangingDevice$Builder;->mBleRssiRangingParams:Landroid/ranging/ble/rssi/BleRssiRangingParams;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRangingDevice(Landroid/ranging/raw/RawRangingDevice$Builder;)Landroid/ranging/RangingDevice;
    .registers 1

    iget-object p0, p0, Landroid/ranging/raw/RawRangingDevice$Builder;->mRangingDevice:Landroid/ranging/RangingDevice;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRttRangingParams(Landroid/ranging/raw/RawRangingDevice$Builder;)Landroid/ranging/wifi/rtt/RttRangingParams;
    .registers 1

    iget-object p0, p0, Landroid/ranging/raw/RawRangingDevice$Builder;->mRttRangingParams:Landroid/ranging/wifi/rtt/RttRangingParams;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUwbRangingParams(Landroid/ranging/raw/RawRangingDevice$Builder;)Landroid/ranging/uwb/UwbRangingParams;
    .registers 1

    iget-object p0, p0, Landroid/ranging/raw/RawRangingDevice$Builder;->mUwbRangingParams:Landroid/ranging/uwb/UwbRangingParams;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/ranging/raw/RawRangingDevice;
    .registers 4

    .line 295
    iget-object v0, p0, Landroid/ranging/raw/RawRangingDevice$Builder;->mRangingDevice:Landroid/ranging/RangingDevice;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/os/Parcelable;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/ranging/raw/RawRangingDevice$Builder;->mUwbRangingParams:Landroid/ranging/uwb/UwbRangingParams;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/ranging/raw/RawRangingDevice$Builder;->mBleCsRangingParams:Landroid/ranging/ble/cs/BleCsRangingParams;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/ranging/raw/RawRangingDevice$Builder;->mBleRssiRangingParams:Landroid/ranging/ble/rssi/BleRssiRangingParams;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/ranging/raw/RawRangingDevice$Builder;->mRttRangingParams:Landroid/ranging/wifi/rtt/RttRangingParams;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/ranging/raw/RawRangingDevice$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/ranging/raw/RawRangingDevice$Builder$$ExternalSyntheticLambda0;-><init>()V

    .line 298
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 302
    new-instance v0, Landroid/ranging/raw/RawRangingDevice;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/raw/RawRangingDevice;-><init>(Landroid/ranging/raw/RawRangingDevice$Builder;Landroid/ranging/raw/RawRangingDevice-IA;)V

    return-object v0

    .line 299
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one ranging params should be configured"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBleRssiRangingParams(Landroid/ranging/ble/rssi/BleRssiRangingParams;)Landroid/ranging/raw/RawRangingDevice$Builder;
    .registers 2
    .param p1, "params"    # Landroid/ranging/ble/rssi/BleRssiRangingParams;

    .line 283
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iput-object p1, p0, Landroid/ranging/raw/RawRangingDevice$Builder;->mBleRssiRangingParams:Landroid/ranging/ble/rssi/BleRssiRangingParams;

    .line 285
    return-object p0
.end method

.method public whitelist setCsRangingParams(Landroid/ranging/ble/cs/BleCsRangingParams;)Landroid/ranging/raw/RawRangingDevice$Builder;
    .registers 2
    .param p1, "params"    # Landroid/ranging/ble/cs/BleCsRangingParams;

    .line 270
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iput-object p1, p0, Landroid/ranging/raw/RawRangingDevice$Builder;->mBleCsRangingParams:Landroid/ranging/ble/cs/BleCsRangingParams;

    .line 272
    return-object p0
.end method

.method public whitelist setRangingDevice(Landroid/ranging/RangingDevice;)Landroid/ranging/raw/RawRangingDevice$Builder;
    .registers 2
    .param p1, "rangingDevice"    # Landroid/ranging/RangingDevice;

    .line 231
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iput-object p1, p0, Landroid/ranging/raw/RawRangingDevice$Builder;->mRangingDevice:Landroid/ranging/RangingDevice;

    .line 233
    return-object p0
.end method

.method public whitelist setRttRangingParams(Landroid/ranging/wifi/rtt/RttRangingParams;)Landroid/ranging/raw/RawRangingDevice$Builder;
    .registers 2
    .param p1, "params"    # Landroid/ranging/wifi/rtt/RttRangingParams;

    .line 257
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iput-object p1, p0, Landroid/ranging/raw/RawRangingDevice$Builder;->mRttRangingParams:Landroid/ranging/wifi/rtt/RttRangingParams;

    .line 259
    return-object p0
.end method

.method public whitelist setUwbRangingParams(Landroid/ranging/uwb/UwbRangingParams;)Landroid/ranging/raw/RawRangingDevice$Builder;
    .registers 2
    .param p1, "params"    # Landroid/ranging/uwb/UwbRangingParams;

    .line 244
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iput-object p1, p0, Landroid/ranging/raw/RawRangingDevice$Builder;->mUwbRangingParams:Landroid/ranging/uwb/UwbRangingParams;

    .line 246
    return-object p0
.end method
