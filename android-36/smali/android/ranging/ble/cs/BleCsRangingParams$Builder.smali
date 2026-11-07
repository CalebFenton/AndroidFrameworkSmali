.class public final Landroid/ranging/ble/cs/BleCsRangingParams$Builder;
.super Ljava/lang/Object;
.source "BleCsRangingParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/ble/cs/BleCsRangingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mLocationType:I

.field private blacklist mPeerBluetoothAddress:Ljava/lang/String;

.field private blacklist mRangingUpdateRate:I

.field private blacklist mSecurityLevel:I

.field private blacklist mSightType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLocationType(Landroid/ranging/ble/cs/BleCsRangingParams$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->mLocationType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPeerBluetoothAddress(Landroid/ranging/ble/cs/BleCsRangingParams$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->mPeerBluetoothAddress:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRangingUpdateRate(Landroid/ranging/ble/cs/BleCsRangingParams$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->mRangingUpdateRate:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecurityLevel(Landroid/ranging/ble/cs/BleCsRangingParams$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->mSecurityLevel:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSightType(Landroid/ranging/ble/cs/BleCsRangingParams$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->mSightType:I

    return p0
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "peerBluetoothAddress"    # Ljava/lang/String;

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, 0x1

    iput v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->mRangingUpdateRate:I

    .line 197
    const/4 v1, 0x0

    iput v1, p0, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->mSightType:I

    .line 199
    iput v1, p0, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->mLocationType:I

    .line 201
    iput v0, p0, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->mSecurityLevel:I

    .line 219
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 224
    iput-object p1, p0, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->mPeerBluetoothAddress:Ljava/lang/String;

    .line 225
    return-void

    .line 221
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bluetooth address is not in 00:11:22:33:AA:BB format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/ranging/ble/cs/BleCsRangingParams;
    .registers 3

    .line 286
    new-instance v0, Landroid/ranging/ble/cs/BleCsRangingParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/ble/cs/BleCsRangingParams;-><init>(Landroid/ranging/ble/cs/BleCsRangingParams$Builder;Landroid/ranging/ble/cs/BleCsRangingParams-IA;)V

    return-object v0
.end method

.method public whitelist setLocationType(I)Landroid/ranging/ble/cs/BleCsRangingParams$Builder;
    .registers 2
    .param p1, "locationType"    # I

    .line 262
    iput p1, p0, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->mLocationType:I

    .line 263
    return-object p0
.end method

.method public whitelist setRangingUpdateRate(I)Landroid/ranging/ble/cs/BleCsRangingParams$Builder;
    .registers 2
    .param p1, "updateRate"    # I

    .line 236
    iput p1, p0, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->mRangingUpdateRate:I

    .line 237
    return-object p0
.end method

.method public whitelist setSecurityLevel(I)Landroid/ranging/ble/cs/BleCsRangingParams$Builder;
    .registers 2
    .param p1, "securityLevel"    # I

    .line 275
    iput p1, p0, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->mSecurityLevel:I

    .line 276
    return-object p0
.end method

.method public whitelist setSightType(I)Landroid/ranging/ble/cs/BleCsRangingParams$Builder;
    .registers 2
    .param p1, "sightType"    # I

    .line 249
    iput p1, p0, Landroid/ranging/ble/cs/BleCsRangingParams$Builder;->mSightType:I

    .line 250
    return-object p0
.end method
