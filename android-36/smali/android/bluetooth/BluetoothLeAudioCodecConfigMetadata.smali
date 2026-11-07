.class public final Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
.super Ljava/lang/Object;
.source "BluetoothLeAudioCodecConfigMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$Builder;
    }
.end annotation


# static fields
.field private static final blacklist AUDIO_CHANNEL_LOCATION_TYPE:I = 0x3

.field private static final blacklist CONFIG_FRAME_DURATION_10000:I = 0x1

.field private static final blacklist CONFIG_FRAME_DURATION_7500:I = 0x0

.field private static final blacklist CONFIG_FRAME_DURATION_UNKNOWN:I = -0x1

.field private static final blacklist CONFIG_SAMPLING_FREQUENCY_11025:I = 0x9

.field private static final blacklist CONFIG_SAMPLING_FREQUENCY_16000:I = 0x3

.field private static final blacklist CONFIG_SAMPLING_FREQUENCY_176400:I = 0xd

.field private static final blacklist CONFIG_SAMPLING_FREQUENCY_192000:I = 0xe

.field private static final blacklist CONFIG_SAMPLING_FREQUENCY_22050:I = 0xa

.field private static final blacklist CONFIG_SAMPLING_FREQUENCY_24000:I = 0x5

.field private static final blacklist CONFIG_SAMPLING_FREQUENCY_32000:I = 0x6

.field private static final blacklist CONFIG_SAMPLING_FREQUENCY_384000:I = 0xf

.field private static final blacklist CONFIG_SAMPLING_FREQUENCY_44100:I = 0x7

.field private static final blacklist CONFIG_SAMPLING_FREQUENCY_48000:I = 0x8

.field private static final blacklist CONFIG_SAMPLING_FREQUENCY_8000:I = 0x1

.field private static final blacklist CONFIG_SAMPLING_FREQUENCY_88200:I = 0xb

.field private static final blacklist CONFIG_SAMPLING_FREQUENCY_96000:I = 0xc

.field private static final blacklist CONFIG_SAMPLING_FREQUENCY_UNKNOWN:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FRAME_DURATION_TYPE:I = 0x2

.field private static final blacklist OCTETS_PER_FRAME_TYPE:I = 0x4

.field private static final blacklist SAMPLING_FREQUENCY_TYPE:I = 0x1


# instance fields
.field private final blacklist mAudioLocation:J

.field private final blacklist mFrameDuration:I

.field private final blacklist mOctetsPerFrame:I

.field private final blacklist mRawMetadata:[B

.field private final blacklist mSampleRate:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smconvertToFrameDurationValue(I)I
    .registers 1

    invoke-static {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->convertToFrameDurationValue(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smconvertToSamplingFrequencyValue(I)I
    .registers 1

    invoke-static {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->convertToSamplingFrequencyValue(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 243
    new-instance v0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JIII[B)V
    .registers 7
    .param p1, "audioLocation"    # J
    .param p3, "sampleRate"    # I
    .param p4, "frameDuration"    # I
    .param p5, "octetsPerFrame"    # I
    .param p6, "rawMetadata"    # [B

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-wide p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mAudioLocation:J

    .line 103
    iput p3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mSampleRate:I

    .line 104
    iput p4, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mFrameDuration:I

    .line 105
    iput p5, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mOctetsPerFrame:I

    .line 106
    iput-object p6, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mRawMetadata:[B

    .line 107
    return-void
.end method

.method synthetic constructor blacklist <init>(JIII[BLandroid/bluetooth/BluetoothLeAudioCodecConfigMetadata-IA;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;-><init>(JIII[B)V

    return-void
.end method

.method private static blacklist convertToFrameDurationBitset(I)I
    .registers 2
    .param p0, "frameDurationValue"    # I

    .line 584
    packed-switch p0, :pswitch_data_a

    .line 590
    const/4 v0, 0x0

    return v0

    .line 588
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 586
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist convertToFrameDurationValue(I)I
    .registers 2
    .param p0, "frameDurationBitset"    # I

    .line 595
    packed-switch p0, :pswitch_data_a

    .line 601
    const/4 v0, -0x1

    return v0

    .line 599
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 597
    :pswitch_7
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist convertToSampleRateBitset(I)I
    .registers 2
    .param p0, "samplingFrequencyValue"    # I

    .line 518
    packed-switch p0, :pswitch_data_2a

    .line 546
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 544
    :pswitch_5
    const/16 v0, 0x1000

    return v0

    .line 542
    :pswitch_8
    const/16 v0, 0x800

    return v0

    .line 540
    :pswitch_b
    const/16 v0, 0x400

    return v0

    .line 538
    :pswitch_e
    const/16 v0, 0x200

    return v0

    .line 536
    :pswitch_11
    const/16 v0, 0x100

    return v0

    .line 526
    :pswitch_14
    const/16 v0, 0x8

    return v0

    .line 522
    :pswitch_17
    const/4 v0, 0x2

    return v0

    .line 534
    :pswitch_19
    const/16 v0, 0x80

    return v0

    .line 532
    :pswitch_1c
    const/16 v0, 0x40

    return v0

    .line 530
    :pswitch_1f
    const/16 v0, 0x20

    return v0

    .line 528
    :pswitch_22
    const/16 v0, 0x10

    return v0

    .line 524
    :pswitch_25
    const/4 v0, 0x4

    return v0

    .line 520
    :pswitch_27
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_27
        :pswitch_3
        :pswitch_25
        :pswitch_3
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist convertToSamplingFrequencyValue(I)I
    .registers 2
    .param p0, "sampleRateBitSet"    # I

    .line 551
    sparse-switch p0, :sswitch_data_28

    .line 579
    const/4 v0, 0x0

    return v0

    .line 577
    :sswitch_5
    const/16 v0, 0xf

    return v0

    .line 575
    :sswitch_8
    const/16 v0, 0xe

    return v0

    .line 573
    :sswitch_b
    const/16 v0, 0xd

    return v0

    .line 571
    :sswitch_e
    const/16 v0, 0xc

    return v0

    .line 569
    :sswitch_11
    const/16 v0, 0xb

    return v0

    .line 567
    :sswitch_14
    const/16 v0, 0x8

    return v0

    .line 565
    :sswitch_17
    const/4 v0, 0x7

    return v0

    .line 563
    :sswitch_19
    const/4 v0, 0x6

    return v0

    .line 561
    :sswitch_1b
    const/4 v0, 0x5

    return v0

    .line 559
    :sswitch_1d
    const/16 v0, 0xa

    return v0

    .line 557
    :sswitch_20
    const/4 v0, 0x3

    return v0

    .line 555
    :sswitch_22
    const/16 v0, 0x9

    return v0

    .line 553
    :sswitch_25
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_25
        0x2 -> :sswitch_22
        0x4 -> :sswitch_20
        0x8 -> :sswitch_1d
        0x10 -> :sswitch_1b
        0x20 -> :sswitch_19
        0x40 -> :sswitch_17
        0x80 -> :sswitch_14
        0x100 -> :sswitch_11
        0x200 -> :sswitch_e
        0x400 -> :sswitch_b
        0x800 -> :sswitch_8
        0x1000 -> :sswitch_5
    .end sparse-switch
.end method

.method public static whitelist fromRawBytes([B)Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    .registers 17
    .param p0, "rawBytes"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 281
    move-object/from16 v6, p0

    if-eqz v6, :cond_bc

    .line 284
    invoke-static {v6}, Landroid/bluetooth/BluetoothUtils;->parseLengthTypeValueBytes([B)Ljava/util/List;

    move-result-object v7

    .line 285
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothUtils$TypeValueEntry;>;"
    array-length v0, v6

    const/4 v1, 0x0

    if-lez v0, :cond_31

    aget-byte v0, v6, v1

    if-lez v0, :cond_31

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_31

    .line 286
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No LTV entries are found from rawBytes of size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_31
    :goto_31
    const-wide/16 v2, 0x0

    .line 290
    .local v2, "audioLocation":J
    const/4 v0, 0x0

    .line 291
    .local v0, "samplingFrequency":I
    const/4 v4, -0x1

    .line 292
    .local v4, "frameDuration":I
    const/4 v5, 0x0

    .line 293
    .local v5, "octetsPerFrame":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v0

    move v10, v4

    .end local v0    # "samplingFrequency":I
    .end local v4    # "frameDuration":I
    .local v9, "samplingFrequency":I
    .local v10, "frameDuration":I
    :goto_3c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;

    .line 294
    .local v0, "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v4

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-ne v4, v12, :cond_74

    .line 295
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v4

    .line 297
    .local v4, "bytes":[B
    aget-byte v14, v4, v1

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v1

    aget-byte v13, v4, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v13, v14

    aget-byte v11, v4, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v11, v13

    int-to-long v13, v11

    aget-byte v11, v4, v12

    and-int/lit16 v11, v11, 0xff

    int-to-long v11, v11

    const/16 v15, 0x18

    shl-long/2addr v11, v15

    or-long v2, v13, v11

    .line 302
    .end local v4    # "bytes":[B
    goto :goto_ac

    :cond_74
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v4

    if-ne v4, v13, :cond_84

    .line 303
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v4

    .line 305
    .restart local v4    # "bytes":[B
    aget-byte v11, v4, v1

    and-int/lit16 v4, v11, 0xff

    .line 306
    .end local v9    # "samplingFrequency":I
    .local v4, "samplingFrequency":I
    move v9, v4

    goto :goto_ac

    .end local v4    # "samplingFrequency":I
    .restart local v9    # "samplingFrequency":I
    :cond_84
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v4

    if-ne v4, v11, :cond_94

    .line 307
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v4

    .line 309
    .local v4, "bytes":[B
    aget-byte v11, v4, v1

    and-int/lit16 v4, v11, 0xff

    .line 310
    .end local v10    # "frameDuration":I
    .local v4, "frameDuration":I
    move v10, v4

    goto :goto_ac

    .end local v4    # "frameDuration":I
    .restart local v10    # "frameDuration":I
    :cond_94
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getType()I

    move-result v4

    const/4 v11, 0x4

    if-ne v4, v11, :cond_ac

    .line 311
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothUtils$TypeValueEntry;->getValue()[B

    move-result-object v4

    .line 313
    .local v4, "bytes":[B
    aget-byte v11, v4, v1

    and-int/lit16 v11, v11, 0xff

    shl-int/2addr v11, v1

    aget-byte v12, v4, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int v5, v11, v12

    .line 315
    .end local v0    # "entry":Landroid/bluetooth/BluetoothUtils$TypeValueEntry;
    .end local v4    # "bytes":[B
    :cond_ac
    :goto_ac
    goto :goto_3c

    .line 316
    :cond_ad
    new-instance v0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 318
    move-wide v1, v2

    .end local v2    # "audioLocation":J
    .local v1, "audioLocation":J
    invoke-static {v9}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->convertToSampleRateBitset(I)I

    move-result v3

    .line 319
    invoke-static {v10}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->convertToFrameDurationBitset(I)I

    move-result v4

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;-><init>(JIII[B)V

    .line 316
    return-object v0

    .line 282
    .end local v1    # "audioLocation":J
    .end local v5    # "octetsPerFrame":I
    .end local v7    # "entries":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothUtils$TypeValueEntry;>;"
    .end local v9    # "samplingFrequency":I
    .end local v10    # "frameDuration":I
    :cond_bc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Raw bytes cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 111
    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    instance-of v1, p1, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    if-eqz v1, :cond_3c

    .line 112
    move-object v1, p1

    check-cast v1, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;

    .line 113
    .local v1, "oth":Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    iget-wide v2, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mAudioLocation:J

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getAudioLocation()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3a

    iget v2, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mSampleRate:I

    .line 114
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getSampleRate()I

    move-result v3

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mFrameDuration:I

    .line 115
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getFrameDuration()I

    move-result v3

    if-ne v2, v3, :cond_3a

    iget v2, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mOctetsPerFrame:I

    .line 116
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getOctetsPerFrame()I

    move-result v3

    if-ne v2, v3, :cond_3a

    iget-object v2, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mRawMetadata:[B

    .line 117
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->getRawMetadata()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    nop

    .line 113
    :goto_3b
    return v0

    .line 119
    .end local v1    # "oth":Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;
    :cond_3c
    return v0
.end method

.method public whitelist getAudioLocation()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 152
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mAudioLocation:J

    return-wide v0
.end method

.method public whitelist getFrameDuration()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 182
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mFrameDuration:I

    return v0
.end method

.method public whitelist getOctetsPerFrame()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 194
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mOctetsPerFrame:I

    return v0
.end method

.method public whitelist getRawMetadata()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 209
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mRawMetadata:[B

    return-object v0
.end method

.method public whitelist getSampleRate()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 167
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mSampleRate:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 124
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mAudioLocation:J

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mSampleRate:I

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mFrameDuration:I

    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mOctetsPerFrame:I

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mRawMetadata:[B

    .line 129
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 124
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothLeAudioCodecConfigMetadata{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "audioLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mAudioLocation:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mSampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frameDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mFrameDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", octetsPerFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mOctetsPerFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mRawMetadata:[B

    .line 139
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 229
    iget-wide v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mAudioLocation:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 230
    iget-object v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mRawMetadata:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 231
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mFrameDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfigMetadata;->mOctetsPerFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    return-void
.end method
