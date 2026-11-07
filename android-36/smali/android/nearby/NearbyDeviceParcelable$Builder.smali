.class public final Landroid/nearby/NearbyDeviceParcelable$Builder;
.super Ljava/lang/Object;
.source "NearbyDeviceParcelable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nearby/NearbyDeviceParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAction:I

.field private blacklist mBluetoothAddress:Ljava/lang/String;

.field private blacklist mData:[B

.field private blacklist mDeviceId:J

.field private blacklist mEncryptionKeyTag:[B

.field private blacklist mFastPairModelId:Ljava/lang/String;

.field private blacklist mMedium:I

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mPresenceDevice:Landroid/nearby/PresenceDevice;

.field private blacklist mPublicCredential:Landroid/nearby/PublicCredential;

.field private blacklist mRssi:I

.field private blacklist mSalt:[B

.field blacklist mScanType:I

.field private blacklist mTxPower:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mDeviceId:J

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/nearby/NearbyDeviceParcelable;
    .registers 20

    .line 597
    move-object/from16 v0, p0

    new-instance v1, Landroid/nearby/NearbyDeviceParcelable;

    iget-wide v2, v0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mDeviceId:J

    iget v4, v0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mScanType:I

    iget-object v5, v0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mName:Ljava/lang/String;

    iget v6, v0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mMedium:I

    iget v7, v0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mTxPower:I

    iget v8, v0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mRssi:I

    iget v9, v0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mAction:I

    iget-object v10, v0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mPublicCredential:Landroid/nearby/PublicCredential;

    iget-object v11, v0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mFastPairModelId:Ljava/lang/String;

    iget-object v12, v0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mBluetoothAddress:Ljava/lang/String;

    iget-object v13, v0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mData:[B

    iget-object v14, v0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mSalt:[B

    iget-object v15, v0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mPresenceDevice:Landroid/nearby/PresenceDevice;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mEncryptionKeyTag:[B

    const/16 v17, 0x0

    move-object/from16 v18, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v18

    invoke-direct/range {v1 .. v17}, Landroid/nearby/NearbyDeviceParcelable;-><init>(JILjava/lang/String;IIIILandroid/nearby/PublicCredential;Ljava/lang/String;Ljava/lang/String;[B[BLandroid/nearby/PresenceDevice;[BLandroid/nearby/NearbyDeviceParcelable-IA;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public blacklist setAction(I)Landroid/nearby/NearbyDeviceParcelable$Builder;
    .registers 2
    .param p1, "action"    # I

    .line 511
    iput p1, p0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mAction:I

    .line 512
    return-object p0
.end method

.method public blacklist setBluetoothAddress(Ljava/lang/String;)Landroid/nearby/NearbyDeviceParcelable$Builder;
    .registers 2
    .param p1, "bluetoothAddress"    # Ljava/lang/String;

    .line 545
    iput-object p1, p0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mBluetoothAddress:Ljava/lang/String;

    .line 546
    return-object p0
.end method

.method public blacklist setData([B)Landroid/nearby/NearbyDeviceParcelable$Builder;
    .registers 2
    .param p1, "data"    # [B

    .line 557
    iput-object p1, p0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mData:[B

    .line 558
    return-object p0
.end method

.method public blacklist setDeviceId(J)Landroid/nearby/NearbyDeviceParcelable$Builder;
    .registers 3
    .param p1, "deviceId"    # J

    .line 444
    iput-wide p1, p0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mDeviceId:J

    .line 445
    return-object p0
.end method

.method public blacklist setEncryptionKeyTag([B)Landroid/nearby/NearbyDeviceParcelable$Builder;
    .registers 2
    .param p1, "encryptionKeyTag"    # [B

    .line 568
    iput-object p1, p0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mEncryptionKeyTag:[B

    .line 569
    return-object p0
.end method

.method public blacklist setFastPairModelId(Ljava/lang/String;)Landroid/nearby/NearbyDeviceParcelable$Builder;
    .registers 2
    .param p1, "fastPairModelId"    # Ljava/lang/String;

    .line 534
    iput-object p1, p0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mFastPairModelId:Ljava/lang/String;

    .line 535
    return-object p0
.end method

.method public blacklist setMedium(I)Landroid/nearby/NearbyDeviceParcelable$Builder;
    .registers 2
    .param p1, "medium"    # I

    .line 476
    iput p1, p0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mMedium:I

    .line 477
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Landroid/nearby/NearbyDeviceParcelable$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 465
    iput-object p1, p0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mName:Ljava/lang/String;

    .line 466
    return-object p0
.end method

.method public blacklist setPresenceDevice(Landroid/nearby/PresenceDevice;)Landroid/nearby/NearbyDeviceParcelable$Builder;
    .registers 2
    .param p1, "presenceDevice"    # Landroid/nearby/PresenceDevice;

    .line 590
    iput-object p1, p0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mPresenceDevice:Landroid/nearby/PresenceDevice;

    .line 591
    return-object p0
.end method

.method public blacklist setPublicCredential(Landroid/nearby/PublicCredential;)Landroid/nearby/NearbyDeviceParcelable$Builder;
    .registers 2
    .param p1, "publicCredential"    # Landroid/nearby/PublicCredential;

    .line 523
    iput-object p1, p0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mPublicCredential:Landroid/nearby/PublicCredential;

    .line 524
    return-object p0
.end method

.method public blacklist setRssi(I)Landroid/nearby/NearbyDeviceParcelable$Builder;
    .registers 2
    .param p1, "rssi"    # I

    .line 499
    iput p1, p0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mRssi:I

    .line 500
    return-object p0
.end method

.method public blacklist setSalt([B)Landroid/nearby/NearbyDeviceParcelable$Builder;
    .registers 2
    .param p1, "salt"    # [B

    .line 579
    iput-object p1, p0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mSalt:[B

    .line 580
    return-object p0
.end method

.method public blacklist setScanType(I)Landroid/nearby/NearbyDeviceParcelable$Builder;
    .registers 2
    .param p1, "scanType"    # I

    .line 454
    iput p1, p0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mScanType:I

    .line 455
    return-object p0
.end method

.method public blacklist setTxPower(I)Landroid/nearby/NearbyDeviceParcelable$Builder;
    .registers 2
    .param p1, "txPower"    # I

    .line 488
    iput p1, p0, Landroid/nearby/NearbyDeviceParcelable$Builder;->mTxPower:I

    .line 489
    return-object p0
.end method
