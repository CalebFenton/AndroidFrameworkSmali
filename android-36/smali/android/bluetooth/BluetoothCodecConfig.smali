.class public final Landroid/bluetooth/BluetoothCodecConfig;
.super Ljava/lang/Object;
.source "BluetoothCodecConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothCodecConfig$Builder;,
        Landroid/bluetooth/BluetoothCodecConfig$ChannelMode;,
        Landroid/bluetooth/BluetoothCodecConfig$BitsPerSample;,
        Landroid/bluetooth/BluetoothCodecConfig$SampleRate;,
        Landroid/bluetooth/BluetoothCodecConfig$CodecPriority;,
        Landroid/bluetooth/BluetoothCodecConfig$SourceCodecType;
    }
.end annotation


# static fields
.field public static final whitelist BITS_PER_SAMPLE_16:I = 0x1

.field public static final whitelist BITS_PER_SAMPLE_24:I = 0x2

.field public static final whitelist BITS_PER_SAMPLE_32:I = 0x4

.field public static final whitelist BITS_PER_SAMPLE_NONE:I = 0x0

.field public static final whitelist CHANNEL_MODE_MONO:I = 0x1

.field public static final whitelist CHANNEL_MODE_NONE:I = 0x0

.field public static final whitelist CHANNEL_MODE_STEREO:I = 0x2

.field public static final whitelist CODEC_PRIORITY_DEFAULT:I = 0x0

.field public static final whitelist CODEC_PRIORITY_DISABLED:I = -0x1

.field public static final whitelist CODEC_PRIORITY_HIGHEST:I = 0xf4240

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SAMPLE_RATE_176400:I = 0x10

.field public static final whitelist SAMPLE_RATE_192000:I = 0x20

.field public static final whitelist SAMPLE_RATE_44100:I = 0x1

.field public static final whitelist SAMPLE_RATE_48000:I = 0x2

.field public static final whitelist SAMPLE_RATE_88200:I = 0x4

.field public static final whitelist SAMPLE_RATE_96000:I = 0x8

.field public static final whitelist SAMPLE_RATE_NONE:I = 0x0

.field public static final whitelist SOURCE_CODEC_TYPE_AAC:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SOURCE_CODEC_TYPE_APTX:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SOURCE_CODEC_TYPE_APTX_HD:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SOURCE_CODEC_TYPE_INVALID:I = 0xf4240
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SOURCE_CODEC_TYPE_LC3:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SOURCE_CODEC_TYPE_LDAC:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final blacklist SOURCE_CODEC_TYPE_MAX:I = 0x7

.field public static final whitelist SOURCE_CODEC_TYPE_OPUS:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SOURCE_CODEC_TYPE_SBC:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final blacklist mBitsPerSample:I

.field private final blacklist mChannelMode:I

.field private blacklist mCodecPriority:I

.field private final blacklist mCodecSpecific1:J

.field private final blacklist mCodecSpecific2:J

.field private final blacklist mCodecSpecific3:J

.field private final blacklist mCodecSpecific4:J

.field private final blacklist mCodecType:Landroid/bluetooth/BluetoothCodecType;

.field private final blacklist mSampleRate:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 479
    new-instance v0, Landroid/bluetooth/BluetoothCodecConfig$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothCodecConfig$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 16
    .param p1, "codecType"    # I

    .line 316
    nop

    .line 317
    invoke-static {p1}, Landroid/bluetooth/BluetoothCodecType;->createFromType(I)Landroid/bluetooth/BluetoothCodecType;

    move-result-object v1

    .line 316
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(Landroid/bluetooth/BluetoothCodecType;IIIIJJJJ)V

    .line 326
    return-void
.end method

.method public constructor greylist <init>(IIIIIJJJJ)V
    .registers 28
    .param p1, "codecType"    # I
    .param p2, "codecPriority"    # I
    .param p3, "sampleRate"    # I
    .param p4, "bitsPerSample"    # I
    .param p5, "channelMode"    # I
    .param p6, "codecSpecific1"    # J
    .param p8, "codecSpecific2"    # J
    .param p10, "codecSpecific3"    # J
    .param p12, "codecSpecific4"    # J

    .line 256
    nop

    .line 257
    invoke-static {p1}, Landroid/bluetooth/BluetoothCodecType;->createFromType(I)Landroid/bluetooth/BluetoothCodecType;

    move-result-object v1

    .line 256
    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(Landroid/bluetooth/BluetoothCodecType;IIIIJJJJ)V

    .line 266
    return-void
.end method

.method public constructor blacklist <init>(Landroid/bluetooth/BluetoothCodecType;IIIIJJJJ)V
    .registers 14
    .param p1, "codecType"    # Landroid/bluetooth/BluetoothCodecType;
    .param p2, "codecPriority"    # I
    .param p3, "sampleRate"    # I
    .param p4, "bitsPerSample"    # I
    .param p5, "channelMode"    # I
    .param p6, "codecSpecific1"    # J
    .param p8, "codecSpecific2"    # J
    .param p10, "codecSpecific3"    # J
    .param p12, "codecSpecific4"    # J

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    .line 293
    iput p2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 294
    iput p3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 295
    iput p4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 296
    iput p5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 297
    iput-wide p6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    .line 298
    iput-wide p8, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 299
    iput-wide p10, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    .line 300
    iput-wide p12, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    .line 301
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothCodecType;->createFromType(I)Landroid/bluetooth/BluetoothCodecType;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    .line 338
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothCodecConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "prevStr"    # Ljava/lang/String;
    .param p1, "capStr"    # Ljava/lang/String;

    .line 383
    if-nez p0, :cond_3

    .line 384
    return-object p1

    .line 386
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getCodecName(I)Ljava/lang/String;
    .registers 3
    .param p0, "codecType"    # I

    .line 516
    sparse-switch p0, :sswitch_data_36

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN CODEC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 532
    :sswitch_1d
    const-string v0, "INVALID CODEC"

    return-object v0

    .line 530
    :sswitch_20
    const-string v0, "Opus"

    return-object v0

    .line 528
    :sswitch_23
    const-string v0, "LC3"

    return-object v0

    .line 526
    :sswitch_26
    const-string v0, "LDAC"

    return-object v0

    .line 524
    :sswitch_29
    const-string v0, "aptX HD"

    return-object v0

    .line 522
    :sswitch_2c
    const-string v0, "aptX"

    return-object v0

    .line 520
    :sswitch_2f
    const-string v0, "AAC"

    return-object v0

    .line 518
    :sswitch_32
    const-string v0, "SBC"

    return-object v0

    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_32
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_29
        0x4 -> :sswitch_26
        0x5 -> :sswitch_23
        0x6 -> :sswitch_20
        0xf4240 -> :sswitch_1d
    .end sparse-switch
.end method

.method private static blacklist hasSingleBit(I)Z
    .registers 2
    .param p0, "valueSet"    # I

    .line 712
    if-eqz p0, :cond_a

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    :goto_a
    const/4 v0, 0x1

    :goto_b
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 342
    instance-of v0, p1, Landroid/bluetooth/BluetoothCodecConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    .line 343
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothCodecConfig;

    .line 344
    .local v0, "other":Landroid/bluetooth/BluetoothCodecConfig;
    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    iget-object v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    if-ne v2, v3, :cond_4b

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v2, v3, :cond_4b

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v2, v3, :cond_4b

    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne v2, v3, :cond_4b

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4b

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4b

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4b

    iget-wide v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    iget-wide v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4b

    const/4 v1, 0x1

    :cond_4b
    return v1

    .line 354
    .end local v0    # "other":Landroid/bluetooth/BluetoothCodecConfig;
    :cond_4c
    return v1
.end method

.method public whitelist getBitsPerSample()I
    .registers 2

    .line 602
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    return v0
.end method

.method public whitelist getChannelMode()I
    .registers 2

    .line 609
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    return v0
.end method

.method public whitelist getCodecPriority()I
    .registers 2

    .line 574
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    return v0
.end method

.method public whitelist getCodecSpecific1()J
    .registers 3

    .line 632
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    return-wide v0
.end method

.method public whitelist getCodecSpecific2()J
    .registers 3

    .line 655
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    return-wide v0
.end method

.method public whitelist getCodecSpecific3()J
    .registers 3

    .line 678
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    return-wide v0
.end method

.method public whitelist getCodecSpecific4()J
    .registers 3

    .line 701
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    return-wide v0
.end method

.method public whitelist getCodecType()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 547
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    if-nez v0, :cond_8

    const v0, 0xf4240

    goto :goto_e

    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecType;->getNativeCodecType()I

    move-result v0

    :goto_e
    return v0
.end method

.method public whitelist getExtendedCodecType()Landroid/bluetooth/BluetoothCodecType;
    .registers 2

    .line 552
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    return-object v0
.end method

.method public whitelist getSampleRate()I
    .registers 2

    .line 594
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    return v0
.end method

.method public blacklist hasSingleBitsPerSample()Z
    .registers 2

    .line 730
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleBit(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasSingleChannelMode()Z
    .registers 2

    .line 739
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleBit(I)Z

    move-result v0

    return v0
.end method

.method public blacklist hasSingleSampleRate()Z
    .registers 2

    .line 721
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-static {v0}, Landroid/bluetooth/BluetoothCodecConfig;->hasSingleBit(I)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 362
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 364
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 365
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 366
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 367
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    .line 368
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    .line 369
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    .line 370
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    .line 371
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 362
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isMandatoryCodec()Z
    .registers 2

    .line 564
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecType;->isMandatoryCodec()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public blacklist sameAudioFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .registers 4
    .param p1, "other"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 750
    if-eqz p1, :cond_16

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-ne v0, v1, :cond_16

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-ne v0, v1, :cond_16

    iget v0, p1, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public blacklist sameCodecSpecificParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .registers 7
    .param p1, "other"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 803
    const/4 v0, 0x0

    if-nez p1, :cond_e

    iget-object v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    iget-object v2, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 804
    return v0

    .line 806
    :cond_e
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v1

    packed-switch v1, :pswitch_data_22

    :pswitch_15
    goto :goto_1f

    .line 811
    :pswitch_16
    iget-wide v1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    iget-wide v3, p1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1f

    .line 812
    return v0

    .line 816
    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public blacklist setCodecPriority(I)V
    .registers 2
    .param p1, "codecPriority"    # I

    .line 587
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    .line 588
    return-void
.end method

.method public blacklist similarCodecFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z
    .registers 19
    .param p1, "other"    # Landroid/bluetooth/BluetoothCodecConfig;

    .line 765
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_50

    iget-object v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    iget-object v3, v1, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_50

    .line 768
    :cond_11
    iget v2, v1, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 769
    .local v2, "sampleRate":I
    iget v3, v0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    if-eqz v3, :cond_1c

    if-nez v2, :cond_1a

    goto :goto_1c

    :cond_1a
    move v6, v2

    goto :goto_1f

    .line 770
    :cond_1c
    :goto_1c
    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    move v6, v2

    .line 772
    .end local v2    # "sampleRate":I
    .local v6, "sampleRate":I
    :goto_1f
    iget v2, v1, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 773
    .local v2, "bitsPerSample":I
    iget v3, v0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-eqz v3, :cond_2a

    if-nez v2, :cond_28

    goto :goto_2a

    :cond_28
    move v7, v2

    goto :goto_2d

    .line 774
    :cond_2a
    :goto_2a
    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    move v7, v2

    .line 776
    .end local v2    # "bitsPerSample":I
    .local v7, "bitsPerSample":I
    :goto_2d
    iget v2, v1, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 777
    .local v2, "channelMode":I
    iget v3, v0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-eqz v3, :cond_38

    if-nez v2, :cond_36

    goto :goto_38

    :cond_36
    move v8, v2

    goto :goto_3b

    .line 778
    :cond_38
    :goto_38
    iget v2, v0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    move v8, v2

    .line 780
    .end local v2    # "channelMode":I
    .local v8, "channelMode":I
    :goto_3b
    new-instance v3, Landroid/bluetooth/BluetoothCodecConfig;

    iget-object v4, v0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/4 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    invoke-direct/range {v3 .. v16}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(Landroid/bluetooth/BluetoothCodecType;IIIIJJJJ)V

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothCodecConfig;->sameAudioFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result v2

    return v2

    .line 766
    .end local v6    # "sampleRate":I
    .end local v7    # "bitsPerSample":I
    .end local v8    # "channelMode":I
    :cond_50
    :goto_50
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "codecName":Ljava/lang/String;
    const v1, 0xf4240

    .line 396
    .local v1, "codecType":I
    iget-object v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    if-eqz v2, :cond_14

    .line 397
    iget-object v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecType;->getCodecName()Ljava/lang/String;

    move-result-object v0

    .line 398
    iget-object v2, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecType:Landroid/bluetooth/BluetoothCodecType;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecType;->getNativeCodecType()I

    move-result v1

    .line 401
    :cond_14
    const/4 v2, 0x0

    .line 402
    .local v2, "sampleRateStr":Ljava/lang/String;
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    const-string v4, "NONE"

    if-nez v3, :cond_1f

    .line 403
    invoke-static {v2, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    :cond_1f
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2b

    .line 406
    const-string v3, "44100"

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    :cond_2b
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_37

    .line 409
    const-string v3, "48000"

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    :cond_37
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_43

    .line 412
    const-string v3, "88200"

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 414
    :cond_43
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4f

    .line 415
    const-string v3, "96000"

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 417
    :cond_4f
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5b

    .line 418
    const-string v3, "176400"

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    :cond_5b
    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_67

    .line 421
    const-string v3, "192000"

    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 424
    :cond_67
    const/4 v3, 0x0

    .line 425
    .local v3, "bitsPerSampleStr":Ljava/lang/String;
    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    if-nez v5, :cond_70

    .line 426
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 428
    :cond_70
    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7c

    .line 429
    const-string v5, "16"

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 431
    :cond_7c
    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_88

    .line 432
    const-string v5, "24"

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 434
    :cond_88
    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_94

    .line 435
    const-string v5, "32"

    invoke-static {v3, v5}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    :cond_94
    const/4 v5, 0x0

    .line 439
    .local v5, "channelModeStr":Ljava/lang/String;
    iget v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    if-nez v6, :cond_9d

    .line 440
    invoke-static {v5, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 442
    :cond_9d
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_a9

    .line 443
    const-string v4, "MONO"

    invoke-static {v5, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 445
    :cond_a9
    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_b5

    .line 446
    const-string v4, "STEREO"

    invoke-static {v5, v4}, Landroid/bluetooth/BluetoothCodecConfig;->appendCapabilityToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 449
    :cond_b5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "{codecName:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",mCodecType:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",mCodecPriority:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",mSampleRate:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    .line 452
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "0x%x"

    invoke-static {v7, v6}, Landroid/bluetooth/BluetoothUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ")"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ",mBitsPerSample:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    .line 454
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/bluetooth/BluetoothUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ",mChannelMode:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    .line 459
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/bluetooth/BluetoothUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",mCodecSpecific1:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",mCodecSpecific2:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",mCodecSpecific3:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",mCodecSpecific4:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "}"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 449
    return-object v4
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 499
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 500
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mBitsPerSample:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    iget v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mChannelMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific1:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 505
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific2:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 506
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific3:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 507
    iget-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig;->mCodecSpecific4:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 508
    return-void
.end method
