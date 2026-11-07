.class public final Landroid/nearby/NearbyDeviceParcelable;
.super Ljava/lang/Object;
.source "NearbyDeviceParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nearby/NearbyDeviceParcelable$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nearby/NearbyDeviceParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAction:I

.field private final blacklist mBluetoothAddress:Ljava/lang/String;

.field private final blacklist mData:[B

.field private final blacklist mDeviceId:J

.field private final blacklist mEncryptionKeyTag:[B

.field private final blacklist mFastPairModelId:Ljava/lang/String;

.field private final blacklist mMedium:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPresenceDevice:Landroid/nearby/PresenceDevice;

.field private final blacklist mPublicCredential:Landroid/nearby/PublicCredential;

.field private final blacklist mRssi:I

.field private final blacklist mSalt:[B

.field blacklist mScanType:I

.field private final blacklist mTxPower:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 44
    new-instance v0, Landroid/nearby/NearbyDeviceParcelable$1;

    invoke-direct {v0}, Landroid/nearby/NearbyDeviceParcelable$1;-><init>()V

    sput-object v0, Landroid/nearby/NearbyDeviceParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JILjava/lang/String;IIIILandroid/nearby/PublicCredential;Ljava/lang/String;Ljava/lang/String;[B[BLandroid/nearby/PresenceDevice;[B)V
    .registers 32
    .param p1, "deviceId"    # J
    .param p3, "scanType"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "medium"    # I
    .param p6, "TxPower"    # I
    .param p7, "rssi"    # I
    .param p8, "action"    # I
    .param p9, "publicCredential"    # Landroid/nearby/PublicCredential;
    .param p10, "fastPairModelId"    # Ljava/lang/String;
    .param p11, "bluetoothAddress"    # Ljava/lang/String;
    .param p12, "data"    # [B
    .param p13, "salt"    # [B
    .param p14, "presenceDevice"    # Landroid/nearby/PresenceDevice;
    .param p15, "encryptionKeyTag"    # [B

    .line 129
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 130
    move-wide/from16 v1, p1

    iput-wide v1, v0, Landroid/nearby/NearbyDeviceParcelable;->mDeviceId:J

    .line 131
    move/from16 v3, p3

    iput v3, v0, Landroid/nearby/NearbyDeviceParcelable;->mScanType:I

    .line 132
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/nearby/NearbyDeviceParcelable;->mName:Ljava/lang/String;

    .line 133
    move/from16 v5, p5

    iput v5, v0, Landroid/nearby/NearbyDeviceParcelable;->mMedium:I

    .line 134
    move/from16 v6, p6

    iput v6, v0, Landroid/nearby/NearbyDeviceParcelable;->mTxPower:I

    .line 135
    move/from16 v7, p7

    iput v7, v0, Landroid/nearby/NearbyDeviceParcelable;->mRssi:I

    .line 136
    move/from16 v8, p8

    iput v8, v0, Landroid/nearby/NearbyDeviceParcelable;->mAction:I

    .line 137
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/nearby/NearbyDeviceParcelable;->mPublicCredential:Landroid/nearby/PublicCredential;

    .line 138
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/nearby/NearbyDeviceParcelable;->mFastPairModelId:Ljava/lang/String;

    .line 139
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/nearby/NearbyDeviceParcelable;->mBluetoothAddress:Ljava/lang/String;

    .line 140
    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/nearby/NearbyDeviceParcelable;->mData:[B

    .line 141
    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/nearby/NearbyDeviceParcelable;->mSalt:[B

    .line 142
    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/nearby/NearbyDeviceParcelable;->mPresenceDevice:Landroid/nearby/PresenceDevice;

    .line 143
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/nearby/NearbyDeviceParcelable;->mEncryptionKeyTag:[B

    .line 144
    return-void
.end method

.method synthetic constructor blacklist <init>(JILjava/lang/String;IIIILandroid/nearby/PublicCredential;Ljava/lang/String;Ljava/lang/String;[B[BLandroid/nearby/PresenceDevice;[BLandroid/nearby/NearbyDeviceParcelable-IA;)V
    .registers 17

    invoke-direct/range {p0 .. p15}, Landroid/nearby/NearbyDeviceParcelable;-><init>(JILjava/lang/String;IIIILandroid/nearby/PublicCredential;Ljava/lang/String;Ljava/lang/String;[B[BLandroid/nearby/PresenceDevice;[B)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 231
    instance-of v0, p1, Landroid/nearby/NearbyDeviceParcelable;

    const/4 v1, 0x0

    if-eqz v0, :cond_82

    .line 232
    move-object v0, p1

    check-cast v0, Landroid/nearby/NearbyDeviceParcelable;

    .line 233
    .local v0, "otherNearbyDeviceParcelable":Landroid/nearby/NearbyDeviceParcelable;
    iget-wide v2, p0, Landroid/nearby/NearbyDeviceParcelable;->mDeviceId:J

    iget-wide v4, v0, Landroid/nearby/NearbyDeviceParcelable;->mDeviceId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_80

    iget v2, p0, Landroid/nearby/NearbyDeviceParcelable;->mScanType:I

    iget v3, v0, Landroid/nearby/NearbyDeviceParcelable;->mScanType:I

    if-ne v2, v3, :cond_80

    iget-object v2, p0, Landroid/nearby/NearbyDeviceParcelable;->mName:Ljava/lang/String;

    iget-object v3, v0, Landroid/nearby/NearbyDeviceParcelable;->mName:Ljava/lang/String;

    .line 235
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget v2, p0, Landroid/nearby/NearbyDeviceParcelable;->mMedium:I

    iget v3, v0, Landroid/nearby/NearbyDeviceParcelable;->mMedium:I

    if-ne v2, v3, :cond_80

    iget v2, p0, Landroid/nearby/NearbyDeviceParcelable;->mTxPower:I

    iget v3, v0, Landroid/nearby/NearbyDeviceParcelable;->mTxPower:I

    if-ne v2, v3, :cond_80

    iget v2, p0, Landroid/nearby/NearbyDeviceParcelable;->mRssi:I

    iget v3, v0, Landroid/nearby/NearbyDeviceParcelable;->mRssi:I

    if-ne v2, v3, :cond_80

    iget v2, p0, Landroid/nearby/NearbyDeviceParcelable;->mAction:I

    iget v3, v0, Landroid/nearby/NearbyDeviceParcelable;->mAction:I

    if-ne v2, v3, :cond_80

    iget-object v2, p0, Landroid/nearby/NearbyDeviceParcelable;->mPublicCredential:Landroid/nearby/PublicCredential;

    iget-object v3, v0, Landroid/nearby/NearbyDeviceParcelable;->mPublicCredential:Landroid/nearby/PublicCredential;

    .line 240
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Landroid/nearby/NearbyDeviceParcelable;->mBluetoothAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/nearby/NearbyDeviceParcelable;->mBluetoothAddress:Ljava/lang/String;

    .line 242
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Landroid/nearby/NearbyDeviceParcelable;->mFastPairModelId:Ljava/lang/String;

    iget-object v3, v0, Landroid/nearby/NearbyDeviceParcelable;->mFastPairModelId:Ljava/lang/String;

    .line 244
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Landroid/nearby/NearbyDeviceParcelable;->mData:[B

    iget-object v3, v0, Landroid/nearby/NearbyDeviceParcelable;->mData:[B

    .line 246
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Landroid/nearby/NearbyDeviceParcelable;->mSalt:[B

    iget-object v3, v0, Landroid/nearby/NearbyDeviceParcelable;->mSalt:[B

    .line 247
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Landroid/nearby/NearbyDeviceParcelable;->mPresenceDevice:Landroid/nearby/PresenceDevice;

    iget-object v3, v0, Landroid/nearby/NearbyDeviceParcelable;->mPresenceDevice:Landroid/nearby/PresenceDevice;

    .line 248
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    iget-object v2, p0, Landroid/nearby/NearbyDeviceParcelable;->mEncryptionKeyTag:[B

    iget-object v3, v0, Landroid/nearby/NearbyDeviceParcelable;->mEncryptionKeyTag:[B

    .line 250
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_80

    const/4 v1, 0x1

    goto :goto_81

    :cond_80
    nop

    .line 233
    :goto_81
    return v1

    .line 253
    .end local v0    # "otherNearbyDeviceParcelable":Landroid/nearby/NearbyDeviceParcelable;
    :cond_82
    return v1
.end method

.method public blacklist getAction()I
    .registers 2

    .line 346
    iget v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mAction:I

    return v0
.end method

.method public blacklist getBluetoothAddress()Ljava/lang/String;
    .registers 2

    .line 380
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mBluetoothAddress:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getData()[B
    .registers 2

    .line 391
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mData:[B

    return-object v0
.end method

.method public blacklist getDeviceId()J
    .registers 3

    .line 281
    iget-wide v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mDeviceId:J

    return-wide v0
.end method

.method public blacklist getEncryptionKeyTag()[B
    .registers 2

    .line 422
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mEncryptionKeyTag:[B

    return-object v0
.end method

.method public blacklist getFastPairModelId()Ljava/lang/String;
    .registers 2

    .line 369
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mFastPairModelId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMedium()I
    .registers 2

    .line 312
    iget v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mMedium:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 301
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPresenceDevice()Landroid/nearby/PresenceDevice;
    .registers 2

    .line 411
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mPresenceDevice:Landroid/nearby/PresenceDevice;

    return-object v0
.end method

.method public blacklist getPublicCredential()Landroid/nearby/PublicCredential;
    .registers 2

    .line 358
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mPublicCredential:Landroid/nearby/PublicCredential;

    return-object v0
.end method

.method public blacklist getRssi()I
    .registers 2

    .line 334
    iget v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mRssi:I

    return v0
.end method

.method public blacklist getSalt()[B
    .registers 2

    .line 402
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mSalt:[B

    return-object v0
.end method

.method public blacklist getScanType()I
    .registers 2

    .line 291
    iget v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mScanType:I

    return v0
.end method

.method public blacklist getTxPower()I
    .registers 2

    .line 324
    iget v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mTxPower:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 16

    .line 258
    iget-wide v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mDeviceId:J

    .line 259
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mScanType:I

    .line 260
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/nearby/NearbyDeviceParcelable;->mName:Ljava/lang/String;

    iget v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mMedium:I

    .line 262
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mRssi:I

    .line 263
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mAction:I

    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mPublicCredential:Landroid/nearby/PublicCredential;

    .line 265
    invoke-virtual {v0}, Landroid/nearby/PublicCredential;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Landroid/nearby/NearbyDeviceParcelable;->mBluetoothAddress:Ljava/lang/String;

    iget-object v10, p0, Landroid/nearby/NearbyDeviceParcelable;->mFastPairModelId:Ljava/lang/String;

    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mData:[B

    .line 268
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mSalt:[B

    .line 269
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, p0, Landroid/nearby/NearbyDeviceParcelable;->mPresenceDevice:Landroid/nearby/PresenceDevice;

    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mEncryptionKeyTag:[B

    .line 271
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array/range {v2 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    .line 258
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NearbyDeviceParcelable[deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/nearby/NearbyDeviceParcelable;->mDeviceId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scanType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/nearby/NearbyDeviceParcelable;->mScanType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nearby/NearbyDeviceParcelable;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", medium="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/nearby/NearbyDeviceParcelable;->mMedium:I

    .line 211
    invoke-static {v1}, Landroid/nearby/NearbyDevice;->mediumToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", txPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/nearby/NearbyDeviceParcelable;->mTxPower:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/nearby/NearbyDeviceParcelable;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/nearby/NearbyDeviceParcelable;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bluetoothAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nearby/NearbyDeviceParcelable;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fastPairModelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nearby/NearbyDeviceParcelable;->mFastPairModelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nearby/NearbyDeviceParcelable;->mData:[B

    .line 223
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", salt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nearby/NearbyDeviceParcelable;->mSalt:[B

    .line 225
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 160
    iget-wide v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mDeviceId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 161
    iget v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mScanType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mName:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 164
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    :cond_1f
    iget v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mMedium:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mTxPower:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mPublicCredential:Landroid/nearby/PublicCredential;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 171
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mFastPairModelId:Ljava/lang/String;

    if-nez v0, :cond_3e

    move v0, v2

    goto :goto_3f

    :cond_3e
    move v0, v1

    :goto_3f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mFastPairModelId:Ljava/lang/String;

    if-eqz v0, :cond_4b

    .line 173
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mFastPairModelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    :cond_4b
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mBluetoothAddress:Ljava/lang/String;

    if-nez v0, :cond_51

    move v0, v2

    goto :goto_52

    :cond_51
    move v0, v1

    :goto_52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mBluetoothAddress:Ljava/lang/String;

    if-eqz v0, :cond_5e

    .line 177
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    :cond_5e
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mData:[B

    if-nez v0, :cond_64

    move v0, v2

    goto :goto_65

    :cond_64
    move v0, v1

    :goto_65
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mData:[B

    if-eqz v0, :cond_77

    .line 181
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mData:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 184
    :cond_77
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mSalt:[B

    if-nez v0, :cond_7d

    move v0, v2

    goto :goto_7e

    :cond_7d
    move v0, v1

    :goto_7e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mSalt:[B

    if-eqz v0, :cond_90

    .line 186
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mSalt:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mSalt:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 189
    :cond_90
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mPresenceDevice:Landroid/nearby/PresenceDevice;

    if-nez v0, :cond_96

    move v0, v2

    goto :goto_97

    :cond_96
    move v0, v1

    :goto_97
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mPresenceDevice:Landroid/nearby/PresenceDevice;

    if-eqz v0, :cond_a3

    .line 191
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mPresenceDevice:Landroid/nearby/PresenceDevice;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 193
    :cond_a3
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mEncryptionKeyTag:[B

    if-nez v0, :cond_a8

    move v1, v2

    :cond_a8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mEncryptionKeyTag:[B

    if-eqz v0, :cond_ba

    .line 195
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mEncryptionKeyTag:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-object v0, p0, Landroid/nearby/NearbyDeviceParcelable;->mEncryptionKeyTag:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 198
    :cond_ba
    return-void
.end method
