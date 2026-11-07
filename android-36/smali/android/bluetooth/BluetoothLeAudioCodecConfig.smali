.class public final Landroid/bluetooth/BluetoothLeAudioCodecConfig;
.super Ljava/lang/Object;
.source "BluetoothLeAudioCodecConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$Builder;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$FrameDuration;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$ChannelCount;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$BitsPerSample;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$SampleRate;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$CodecPriority;,
        Landroid/bluetooth/BluetoothLeAudioCodecConfig$SourceCodecType;
    }
.end annotation


# static fields
.field public static final whitelist BITS_PER_SAMPLE_16:I = 0x1

.field public static final whitelist BITS_PER_SAMPLE_24:I = 0x2

.field public static final whitelist BITS_PER_SAMPLE_32:I = 0x8

.field public static final whitelist BITS_PER_SAMPLE_NONE:I = 0x0

.field public static final whitelist CHANNEL_COUNT_1:I = 0x1

.field public static final whitelist CHANNEL_COUNT_2:I = 0x2

.field public static final whitelist CHANNEL_COUNT_NONE:I = 0x0

.field public static final whitelist CODEC_PRIORITY_DEFAULT:I = 0x0

.field public static final whitelist CODEC_PRIORITY_DISABLED:I = -0x1

.field public static final whitelist CODEC_PRIORITY_HIGHEST:I = 0xf4240

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothLeAudioCodecConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FRAME_DURATION_10000:I = 0x2

.field public static final whitelist FRAME_DURATION_7500:I = 0x1

.field public static final whitelist FRAME_DURATION_NONE:I = 0x0

.field public static final whitelist SAMPLE_RATE_11025:I = 0x2

.field public static final whitelist SAMPLE_RATE_16000:I = 0x4

.field public static final whitelist SAMPLE_RATE_176400:I = 0x400

.field public static final whitelist SAMPLE_RATE_192000:I = 0x800

.field public static final whitelist SAMPLE_RATE_22050:I = 0x8

.field public static final whitelist SAMPLE_RATE_24000:I = 0x10

.field public static final whitelist SAMPLE_RATE_32000:I = 0x20

.field public static final whitelist SAMPLE_RATE_384000:I = 0x1000

.field public static final whitelist SAMPLE_RATE_44100:I = 0x40

.field public static final whitelist SAMPLE_RATE_48000:I = 0x80

.field public static final whitelist SAMPLE_RATE_8000:I = 0x1

.field public static final whitelist SAMPLE_RATE_88200:I = 0x100

.field public static final whitelist SAMPLE_RATE_96000:I = 0x200

.field public static final whitelist SAMPLE_RATE_NONE:I = 0x0

.field public static final whitelist SOURCE_CODEC_TYPE_INVALID:I = 0xf4240

.field public static final whitelist SOURCE_CODEC_TYPE_LC3:I = 0x0

.field public static final whitelist SOURCE_CODEC_TYPE_OPUS:I = 0x1


# instance fields
.field private final blacklist mBitsPerSample:I

.field private final blacklist mChannelCount:I

.field private final blacklist mCodecPriority:I

.field private final blacklist mCodecType:I

.field private final blacklist mFrameDuration:I

.field private final blacklist mMaxOctetsPerFrame:I

.field private final blacklist mMinOctetsPerFrame:I

.field private final blacklist mOctetsPerFrame:I

.field private final blacklist mSampleRate:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 265
    new-instance v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IIIIIIIII)V
    .registers 10
    .param p1, "codecType"    # I
    .param p2, "codecPriority"    # I
    .param p3, "sampleRate"    # I
    .param p4, "bitsPerSample"    # I
    .param p5, "channelCount"    # I
    .param p6, "frameDuration"    # I
    .param p7, "octetsPerFrame"    # I
    .param p8, "minOctetsPerFrame"    # I
    .param p9, "maxOctetsPerFrame"    # I

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput p1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    .line 248
    iput p2, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    .line 249
    iput p3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    .line 250
    iput p4, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    .line 251
    iput p5, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    .line 252
    iput p6, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    .line 253
    iput p7, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    .line 254
    iput p8, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    .line 255
    iput p9, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    .line 256
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIIIIIILandroid/bluetooth/BluetoothLeAudioCodecConfig-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;-><init>(IIIIIIIII)V

    return-void
.end method

.method private static blacklist frameDurationToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "frameDurationBit"    # I

    .line 343
    packed-switch p0, :pswitch_data_20

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown bit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 349
    :pswitch_17
    const-string v0, "10 ms"

    return-object v0

    .line 347
    :pswitch_1a
    const-string v0, "7.5 ms"

    return-object v0

    .line 345
    :pswitch_1d
    const-string v0, "None"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method private static blacklist sampleRateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "sampleRateBit"    # I

    .line 308
    sparse-switch p0, :sswitch_data_42

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown bit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 336
    :sswitch_17
    const-string v0, "384 kHz"

    return-object v0

    .line 334
    :sswitch_1a
    const-string v0, "192 kHz"

    return-object v0

    .line 332
    :sswitch_1d
    const-string v0, "176.4 kHz"

    return-object v0

    .line 330
    :sswitch_20
    const-string v0, "96 kHz"

    return-object v0

    .line 328
    :sswitch_23
    const-string v0, "88.2 kHz"

    return-object v0

    .line 326
    :sswitch_26
    const-string v0, "48 kHz"

    return-object v0

    .line 324
    :sswitch_29
    const-string v0, "44.1 kHz"

    return-object v0

    .line 322
    :sswitch_2c
    const-string v0, "32 kHz"

    return-object v0

    .line 320
    :sswitch_2f
    const-string v0, "24 kHz"

    return-object v0

    .line 318
    :sswitch_32
    const-string v0, "22.05 kHz"

    return-object v0

    .line 316
    :sswitch_35
    const-string v0, "16 kHz"

    return-object v0

    .line 314
    :sswitch_38
    const-string v0, "11.025 kHz"

    return-object v0

    .line 312
    :sswitch_3b
    const-string v0, "8 kHz"

    return-object v0

    .line 310
    :sswitch_3e
    const-string v0, "None"

    return-object v0

    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_3e
        0x1 -> :sswitch_3b
        0x2 -> :sswitch_38
        0x4 -> :sswitch_35
        0x8 -> :sswitch_32
        0x10 -> :sswitch_2f
        0x20 -> :sswitch_2c
        0x40 -> :sswitch_29
        0x80 -> :sswitch_26
        0x100 -> :sswitch_23
        0x200 -> :sswitch_20
        0x400 -> :sswitch_1d
        0x800 -> :sswitch_1a
        0x1000 -> :sswitch_17
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 458
    instance-of v0, p1, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    .line 459
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;

    .line 460
    .local v0, "other":Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecType()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    if-ne v2, v3, :cond_52

    .line 461
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecPriority()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    if-ne v2, v3, :cond_52

    .line 462
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getSampleRate()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    if-ne v2, v3, :cond_52

    .line 463
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getBitsPerSample()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    if-ne v2, v3, :cond_52

    .line 464
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getChannelCount()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    if-ne v2, v3, :cond_52

    .line 465
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getFrameDuration()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    if-ne v2, v3, :cond_52

    .line 466
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getOctetsPerFrame()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    if-ne v2, v3, :cond_52

    .line 467
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMinOctetsPerFrame()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    if-ne v2, v3, :cond_52

    .line 468
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getMaxOctetsPerFrame()I

    move-result v2

    iget v3, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    if-ne v2, v3, :cond_52

    const/4 v1, 0x1

    goto :goto_53

    :cond_52
    nop

    .line 460
    :goto_53
    return v1

    .line 470
    .end local v0    # "other":Landroid/bluetooth/BluetoothLeAudioCodecConfig;
    :cond_54
    return v1
.end method

.method public whitelist getBitsPerSample()I
    .registers 2

    .line 428
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    return v0
.end method

.method public whitelist getChannelCount()I
    .registers 2

    .line 433
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    return v0
.end method

.method public whitelist getCodecName()Ljava/lang/String;
    .registers 3

    .line 395
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    sparse-switch v0, :sswitch_data_36

    .line 401
    invoke-static {}, Lcom/android/bluetooth/jarjar/com/android/bluetooth/flags/Flags;->leaudioAddOpusCodecType()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 402
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 403
    const-string v0, "Opus"

    return-object v0

    .line 399
    :sswitch_13
    const-string v0, "INVALID CODEC"

    return-object v0

    .line 397
    :sswitch_16
    const-string v0, "LC3"

    return-object v0

    .line 408
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN CODEC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_16
        0xf4240 -> :sswitch_13
    .end sparse-switch
.end method

.method public whitelist getCodecPriority()I
    .registers 2

    .line 418
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    return v0
.end method

.method public whitelist getCodecType()I
    .registers 2

    .line 386
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    return v0
.end method

.method public whitelist getFrameDuration()I
    .registers 2

    .line 438
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    return v0
.end method

.method public whitelist getMaxOctetsPerFrame()I
    .registers 2

    .line 453
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    return v0
.end method

.method public whitelist getMinOctetsPerFrame()I
    .registers 2

    .line 448
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    return v0
.end method

.method public whitelist getOctetsPerFrame()I
    .registers 2

    .line 443
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    return v0
.end method

.method public whitelist getSampleRate()I
    .registers 2

    .line 423
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 479
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    .line 480
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    .line 481
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    .line 482
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    .line 483
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    .line 484
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    .line 485
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    .line 486
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    .line 487
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    .line 488
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 479
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{codecName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 358
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->getCodecName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mCodecPriority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSampleRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    .line 364
    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->sampleRateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mBitsPerSample:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mChannelCountBitMask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mFrameDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    .line 370
    invoke-static {v1}, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->frameDurationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mOctetsPerFrame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMinOctetsPerFrame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mMaxOctetsPerFrame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 296
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mCodecPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mBitsPerSample:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mChannelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mFrameDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mOctetsPerFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMinOctetsPerFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v0, p0, Landroid/bluetooth/BluetoothLeAudioCodecConfig;->mMaxOctetsPerFrame:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    return-void
.end method
