.class public final Landroid/bluetooth/le/AdvertisingSetParameters;
.super Ljava/lang/Object;
.source "AdvertisingSetParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/AdvertisingSetParameters$Builder;,
        Landroid/bluetooth/le/AdvertisingSetParameters$AddressTypeStatus;
    }
.end annotation


# static fields
.field public static final whitelist ADDRESS_TYPE_DEFAULT:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ADDRESS_TYPE_PUBLIC:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ADDRESS_TYPE_RANDOM:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ADDRESS_TYPE_RANDOM_NON_RESOLVABLE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/AdvertisingSetParameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INTERVAL_HIGH:I = 0x640

.field public static final whitelist INTERVAL_LOW:I = 0xa0

.field public static final whitelist INTERVAL_MAX:I = 0xffffff

.field public static final whitelist INTERVAL_MEDIUM:I = 0x190

.field public static final whitelist INTERVAL_MIN:I = 0xa0

.field public static final whitelist TX_POWER_HIGH:I = 0x1

.field public static final whitelist TX_POWER_LOW:I = -0xf

.field public static final whitelist TX_POWER_MAX:I = 0x1

.field public static final whitelist TX_POWER_MEDIUM:I = -0x7

.field public static final whitelist TX_POWER_MIN:I = -0x7f

.field public static final whitelist TX_POWER_ULTRA_LOW:I = -0x15


# instance fields
.field private final blacklist mConnectable:Z

.field private final blacklist mDiscoverable:Z

.field private final blacklist mIncludeTxPower:Z

.field private final blacklist mInterval:I

.field private final blacklist mIsAnonymous:Z

.field private final blacklist mIsDirected:Z

.field private final blacklist mIsHighDutyCycle:Z

.field private final blacklist mIsLegacy:Z

.field private final blacklist mOwnAddressType:I

.field private final blacklist mPeerAddress:Ljava/lang/String;

.field private final blacklist mPeerAddressType:I

.field private final blacklist mPrimaryPhy:I

.field private final blacklist mScannable:Z

.field private final blacklist mSecondaryPhy:I

.field private final blacklist mTxPowerLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 360
    new-instance v0, Landroid/bluetooth/le/AdvertisingSetParameters$1;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertisingSetParameters$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/AdvertisingSetParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mConnectable:Z

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mScannable:Z

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    move v0, v2

    :goto_24
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsLegacy:Z

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v1

    goto :goto_2f

    :cond_2e
    move v0, v2

    :goto_2f
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsAnonymous:Z

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39

    move v0, v1

    goto :goto_3a

    :cond_39
    move v0, v2

    :goto_3a
    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIncludeTxPower:Z

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPrimaryPhy:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mSecondaryPhy:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mInterval:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mTxPowerLevel:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mOwnAddressType:I

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_62

    :cond_61
    move v1, v2

    :goto_62
    iput-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mDiscoverable:Z

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsDirected:Z

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsHighDutyCycle:Z

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPeerAddress:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPeerAddressType:I

    .line 197
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/le/AdvertisingSetParameters-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(ZZZZZZIIIIIZZLjava/lang/String;I)V
    .registers 32
    .param p1, "connectable"    # Z
    .param p2, "discoverable"    # Z
    .param p3, "scannable"    # Z
    .param p4, "isLegacy"    # Z
    .param p5, "isAnonymous"    # Z
    .param p6, "includeTxPower"    # Z
    .param p7, "primaryPhy"    # I
    .param p8, "secondaryPhy"    # I
    .param p9, "interval"    # I
    .param p10, "txPowerLevel"    # I
    .param p11, "ownAddressType"    # I
    .param p12, "isDirected"    # Z
    .param p13, "isHighDutyCycle"    # Z
    .param p14, "peerAddress"    # Ljava/lang/String;
    .param p15, "peerAddressType"    # I

    .line 163
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 164
    move/from16 v1, p1

    iput-boolean v1, v0, Landroid/bluetooth/le/AdvertisingSetParameters;->mConnectable:Z

    .line 165
    move/from16 v2, p2

    iput-boolean v2, v0, Landroid/bluetooth/le/AdvertisingSetParameters;->mDiscoverable:Z

    .line 166
    move/from16 v3, p3

    iput-boolean v3, v0, Landroid/bluetooth/le/AdvertisingSetParameters;->mScannable:Z

    .line 167
    move/from16 v4, p4

    iput-boolean v4, v0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsLegacy:Z

    .line 168
    move/from16 v5, p5

    iput-boolean v5, v0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsAnonymous:Z

    .line 169
    move/from16 v6, p6

    iput-boolean v6, v0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIncludeTxPower:Z

    .line 170
    move/from16 v7, p7

    iput v7, v0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPrimaryPhy:I

    .line 171
    move/from16 v8, p8

    iput v8, v0, Landroid/bluetooth/le/AdvertisingSetParameters;->mSecondaryPhy:I

    .line 172
    move/from16 v9, p9

    iput v9, v0, Landroid/bluetooth/le/AdvertisingSetParameters;->mInterval:I

    .line 173
    move/from16 v10, p10

    iput v10, v0, Landroid/bluetooth/le/AdvertisingSetParameters;->mTxPowerLevel:I

    .line 174
    move/from16 v11, p11

    iput v11, v0, Landroid/bluetooth/le/AdvertisingSetParameters;->mOwnAddressType:I

    .line 175
    move/from16 v12, p12

    iput-boolean v12, v0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsDirected:Z

    .line 176
    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsHighDutyCycle:Z

    .line 177
    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPeerAddress:Ljava/lang/String;

    .line 178
    move/from16 v15, p15

    iput v15, v0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPeerAddressType:I

    .line 179
    return-void
.end method

.method synthetic constructor blacklist <init>(ZZZZZZIIIIIZZLjava/lang/String;ILandroid/bluetooth/le/AdvertisingSetParameters-IA;)V
    .registers 17

    invoke-direct/range {p0 .. p15}, Landroid/bluetooth/le/AdvertisingSetParameters;-><init>(ZZZZZZIIIIIZZLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getInterval()I
    .registers 2

    .line 241
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mInterval:I

    return v0
.end method

.method public whitelist getOwnAddressType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 255
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mOwnAddressType:I

    return v0
.end method

.method public whitelist getPeerAddress()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 288
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPeerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPeerAddressType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 299
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPeerAddressType:I

    return v0
.end method

.method public whitelist getPrimaryPhy()I
    .registers 2

    .line 231
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPrimaryPhy:I

    return v0
.end method

.method public whitelist getSecondaryPhy()I
    .registers 2

    .line 236
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mSecondaryPhy:I

    return v0
.end method

.method public whitelist getTxPowerLevel()I
    .registers 2

    .line 246
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mTxPowerLevel:I

    return v0
.end method

.method public whitelist includeTxPower()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIncludeTxPower:Z

    return v0
.end method

.method public whitelist isAnonymous()Z
    .registers 2

    .line 221
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsAnonymous:Z

    return v0
.end method

.method public whitelist isConnectable()Z
    .registers 2

    .line 201
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mConnectable:Z

    return v0
.end method

.method public whitelist isDirected()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 266
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsDirected:Z

    return v0
.end method

.method public whitelist isDiscoverable()Z
    .registers 2

    .line 206
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mDiscoverable:Z

    return v0
.end method

.method public whitelist isHighDutyCycle()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 277
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsHighDutyCycle:Z

    return v0
.end method

.method public whitelist isLegacy()Z
    .registers 2

    .line 216
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsLegacy:Z

    return v0
.end method

.method public whitelist isScannable()Z
    .registers 2

    .line 211
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mScannable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdvertisingSetParameters [connectable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mConnectable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", discoverable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mDiscoverable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isLegacy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsLegacy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAnonymous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsAnonymous:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", includeTxPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIncludeTxPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPrimaryPhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondaryPhy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mSecondaryPhy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ownAddressType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mOwnAddressType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDirected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsDirected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHighDutyCycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsHighDutyCycle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", peerAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPeerAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", peerAddressType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPeerAddressType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 342
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mConnectable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mScannable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsLegacy:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsAnonymous:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIncludeTxPower:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPrimaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mSecondaryPhy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mTxPowerLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mOwnAddressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mDiscoverable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsDirected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 354
    iget-boolean v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mIsHighDutyCycle:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 355
    iget-object v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPeerAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUtils;->writeStringToParcel(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 356
    iget v0, p0, Landroid/bluetooth/le/AdvertisingSetParameters;->mPeerAddressType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    return-void
.end method
