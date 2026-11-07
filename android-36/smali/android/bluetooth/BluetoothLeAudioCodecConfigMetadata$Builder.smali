.class public final Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;
.super Ljava/lang/Object;
.source "BluetoothLeAudioCodecConfigMetadata.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAudioLocation:J

.field private blacklist mFrameDuration:I

.field private blacklist mOctetsPerFrame:I

.field private blacklist mRawMetadata:[B

.field private blacklist mSampleRate:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mSampleRate:I

    .line 333
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mFrameDuration:I

    .line 334
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mOctetsPerFrame:I

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    .line 343
    return-void
.end method

.method public constructor whitelist <init>(Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;)V
    .registers 4
    .param p1, "original"    # Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mSampleRate:I

    .line 333
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mFrameDuration:I

    .line 334
    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mOctetsPerFrame:I

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    .line 353
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getAudioLocation()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    .line 354
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getSampleRate()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mSampleRate:I

    .line 355
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getFrameDuration()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mFrameDuration:I

    .line 356
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getOctetsPerFrame()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mOctetsPerFrame:I

    .line 357
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getRawMetadata()[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    .line 358
    return-void
.end method

.method static synthetic blacklist lambda$build$0(Landroid/bluetooth/BluetoothUtils$TypeValueEntry;)Z
    .registers 3
    .param p0, "entry"    # Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 474
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method static synthetic blacklist lambda$build$1(Landroid/bluetooth/BluetoothUtils$TypeValueEntry;)Z
    .registers 3
    .param p0, "entry"    # Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 484
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static synthetic blacklist lambda$build$2(Landroid/bluetooth/BluetoothUtils$TypeValueEntry;)Z
    .registers 3
    .param p0, "entry"    # Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 491
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static synthetic blacklist lambda$build$3(Landroid/bluetooth/BluetoothUtils$TypeValueEntry;)Z
    .registers 3
    .param p0, "entry"    # Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 500
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .registers 13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothUtils$TypeValueEntry;>;"
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    if-eqz v1, :cond_44

    .line 462
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    invoke-static {v1}, Landroid/bluetooth/BluetoothUtils;->parseLengthTypeValueBytes([B)Ljava/util/List;

    move-result-object v0

    .line 463
    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    array-length v1, v1

    if-lez v1, :cond_44

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-lez v1, :cond_44

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_22

    goto :goto_44

    .line 464
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No LTV entries are found from rawBytes of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mRawMetadata:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " please check the original object passed to Builder\'s copy constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 472
    :cond_44
    :goto_44
    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mSampleRate:I

    const/4 v2, 0x1

    if-eqz v1, :cond_6e

    .line 473
    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mSampleRate:I

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->-$$Nest$smconvertToSamplingFrequencyValue(I)I

    move-result v1

    .line 474
    .local v1, "samplingFrequency":I
    new-instance v3, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 475
    new-instance v3, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 478
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    and-int/lit16 v5, v1, 0xff

    int-to-byte v5, v5

    .line 479
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 480
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v3, v2, v4}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;-><init>(I[B)V

    .line 475
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    .end local v1    # "samplingFrequency":I
    :cond_6e
    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mFrameDuration:I

    const/4 v3, 0x2

    if-eqz v1, :cond_98

    .line 483
    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mFrameDuration:I

    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->-$$Nest$smconvertToFrameDurationValue(I)I

    move-result v1

    .line 484
    .local v1, "frameDuration":I
    new-instance v4, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 485
    new-instance v4, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 488
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    and-int/lit16 v5, v1, 0xff

    int-to-byte v5, v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v4, v3, v2}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;-><init>(I[B)V

    .line 485
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    .end local v1    # "frameDuration":I
    :cond_98
    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    const-wide/16 v4, -0x1

    cmp-long v1, v1, v4

    const/4 v2, 0x4

    if-eqz v1, :cond_c2

    .line 491
    new-instance v1, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 492
    new-instance v1, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 495
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-wide v7, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    and-long/2addr v4, v7

    long-to-int v4, v4

    .line 496
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 497
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const/4 v5, 0x3

    invoke-direct {v1, v5, v4}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;-><init>(I[B)V

    .line 492
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_c2
    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mOctetsPerFrame:I

    if-eqz v1, :cond_e9

    .line 500
    new-instance v1, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 501
    new-instance v1, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 504
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mOctetsPerFrame:I

    const v5, 0xffff

    and-int/2addr v4, v5

    int-to-short v4, v4

    .line 505
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 506
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;-><init>(I[B)V

    .line 501
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_e9
    invoke-static {v0}, Landroid/bluetooth/BluetoothUtils;->serializeTypeValue(Ljava/util/List;)[B

    move-result-object v10

    .line 509
    .local v10, "rawBytes":[B
    if-eqz v10, :cond_fe

    .line 512
    new-instance v4, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    iget-wide v5, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    iget v7, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mSampleRate:I

    iget v8, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mFrameDuration:I

    iget v9, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mOctetsPerFrame:I

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;-><init>(JIII[BLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata-IA;)V

    return-object v4

    .line 510
    :cond_fe
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed to serialize entries to bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setAudioLocation(J)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;
    .registers 3
    .param p1, "audioLocation"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 371
    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mAudioLocation:J

    .line 372
    return-object p0
.end method

.method public whitelist setFrameDuration(I)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;
    .registers 5
    .param p1, "frameDuration"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 423
    if-eqz p1, :cond_22

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    goto :goto_22

    .line 426
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid frame duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_22
    :goto_22
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mFrameDuration:I

    .line 429
    return-object p0
.end method

.method public whitelist setOctetsPerFrame(I)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;
    .registers 5
    .param p1, "octetsPerFrame"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 444
    if-ltz p1, :cond_5

    .line 447
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mOctetsPerFrame:I

    .line 448
    return-object p0

    .line 445
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid octetsPerFrame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSampleRate(I)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;
    .registers 5
    .param p1, "sampleRate"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 389
    if-eqz p1, :cond_4d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x10

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x40

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x80

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x100

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x200

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x400

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x800

    if-eq p1, v0, :cond_4d

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_34

    goto :goto_4d

    .line 403
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid sample rate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_4d
    :goto_4d
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;->mSampleRate:I

    .line 406
    return-object p0
.end method
