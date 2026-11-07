.class public final Landroid/media/internal/exo/audio/AacUtil;
.super Ljava/lang/Object;
.source "AacUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/audio/AacUtil$Config;
    }
.end annotation


# static fields
.field private static final blacklist AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final blacklist AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0xd

    .line 90
    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Landroid/media/internal/exo/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    const/16 v0, 0x10

    .line 111
    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Landroid/media/internal/exo/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    nop

    :array_14
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_32
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method public static blacklist buildAudioSpecificConfig(III)[B
    .registers 5

    shl-int/lit8 p0, p0, 0x3

    and-int/lit16 p0, p0, 0xf8

    const/4 v0, 0x1

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    int-to-byte p0, p0

    shl-int/lit8 p1, p1, 0x7

    and-int/lit16 p1, p1, 0x80

    shl-int/lit8 p2, p2, 0x3

    and-int/lit8 p2, p2, 0x78

    or-int/2addr p1, p2

    int-to-byte p1, p1

    const/4 p2, 0x2

    .line 299
    new-array p2, p2, [B

    const/4 v1, 0x0

    aput-byte p0, p2, v1

    aput-byte p1, p2, v0

    return-object p2
.end method

.method private static blacklist getAudioObjectType(Landroid/media/internal/exo/util/ParsableBitArray;)I
    .registers 3

    const/4 v0, 0x5

    .line 310
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_11

    const/4 v0, 0x6

    .line 312
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x20

    return p0

    :cond_11
    return v0
.end method

.method private static blacklist getSamplingFrequency(Landroid/media/internal/exo/util/ParsableBitArray;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 327
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_10

    const/16 v0, 0x18

    .line 329
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p0

    return p0

    :cond_10
    const/16 p0, 0xd

    if-ge v0, p0, :cond_19

    .line 331
    sget-object p0, Landroid/media/internal/exo/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    aget p0, p0, v0

    return p0

    :cond_19
    const/4 p0, 0x0

    .line 333
    invoke-static {p0, p0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static blacklist parseAudioSpecificConfig(Landroid/media/internal/exo/util/ParsableBitArray;Z)Landroid/media/internal/exo/audio/AacUtil$Config;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 196
    invoke-static {p0}, Landroid/media/internal/exo/audio/AacUtil;->getAudioObjectType(Landroid/media/internal/exo/util/ParsableBitArray;)I

    move-result v0

    .line 197
    invoke-static {p0}, Landroid/media/internal/exo/audio/AacUtil;->getSamplingFrequency(Landroid/media/internal/exo/util/ParsableBitArray;)I

    move-result v1

    const/4 v2, 0x4

    .line 198
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mp4a.40."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_25

    const/16 v5, 0x1d

    if-ne v0, v5, :cond_35

    .line 207
    :cond_25
    invoke-static {p0}, Landroid/media/internal/exo/audio/AacUtil;->getSamplingFrequency(Landroid/media/internal/exo/util/ParsableBitArray;)I

    move-result v1

    .line 208
    invoke-static {p0}, Landroid/media/internal/exo/audio/AacUtil;->getAudioObjectType(Landroid/media/internal/exo/util/ParsableBitArray;)I

    move-result v0

    const/16 v5, 0x16

    if-ne v0, v5, :cond_35

    .line 211
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v3

    :cond_35
    if-eqz p1, :cond_8b

    const/4 p1, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, p1, :cond_65

    if-eq v0, v6, :cond_65

    if-eq v0, v5, :cond_65

    if-eq v0, v2, :cond_65

    const/4 p1, 0x6

    if-eq v0, p1, :cond_65

    const/4 p1, 0x7

    if-eq v0, p1, :cond_65

    const/16 p1, 0x11

    if-eq v0, p1, :cond_65

    packed-switch v0, :pswitch_data_9e

    .line 232
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unsupported audio object type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/exo/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 229
    :cond_65
    :pswitch_65
    invoke-static {p0, v0, v3}, Landroid/media/internal/exo/audio/AacUtil;->parseGaSpecificConfig(Landroid/media/internal/exo/util/ParsableBitArray;II)V

    packed-switch v0, :pswitch_data_ac

    :pswitch_6b
    goto :goto_8b

    .line 242
    :pswitch_6c
    invoke-virtual {p0, v6}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-eq p0, v6, :cond_75

    if-eq p0, v5, :cond_75

    goto :goto_8b

    .line 244
    :cond_75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported epConfig: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/exo/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    .line 253
    :cond_8b
    :goto_8b
    sget-object p0, Landroid/media/internal/exo/audio/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    aget p0, p0, v3

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_99

    .line 257
    new-instance p1, Landroid/media/internal/exo/audio/AacUtil$Config;

    invoke-direct {p1, v1, p0, v4, v0}, Landroid/media/internal/exo/audio/AacUtil$Config;-><init>(IILjava/lang/String;Landroid/media/internal/exo/audio/AacUtil$1;)V

    return-object p1

    .line 255
    :cond_99
    invoke-static {v0, v0}, Landroid/media/internal/exo/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroid/media/internal/exo/ParserException;

    move-result-object p0

    throw p0

    :pswitch_data_9e
    .packed-switch 0x13
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
        :pswitch_65
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x11
        :pswitch_6c
        :pswitch_6b
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
    .end packed-switch
.end method

.method public static blacklist parseAudioSpecificConfig([B)Landroid/media/internal/exo/audio/AacUtil$Config;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/internal/exo/ParserException;
        }
    .end annotation

    .line 179
    new-instance v0, Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroid/media/internal/exo/audio/AacUtil;->parseAudioSpecificConfig(Landroid/media/internal/exo/util/ParsableBitArray;Z)Landroid/media/internal/exo/audio/AacUtil$Config;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseGaSpecificConfig(Landroid/media/internal/exo/util/ParsableBitArray;II)V
    .registers 6

    .line 340
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 342
    const-string v0, "AacUtil"

    const-string v1, "Unexpected frameLengthFlag = 1"

    invoke-static {v0, v1}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_d
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0xe

    .line 346
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 348
    :cond_18
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz p2, :cond_4a

    const/4 p2, 0x6

    const/4 v1, 0x3

    const/16 v2, 0x14

    if-eq p1, p2, :cond_26

    if-ne p1, v2, :cond_29

    .line 353
    :cond_26
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_29
    if-eqz v0, :cond_49

    const/16 p2, 0x16

    if-ne p1, p2, :cond_34

    const/16 p2, 0x10

    .line 357
    invoke-virtual {p0, p2}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_34
    const/16 p2, 0x11

    if-eq p1, p2, :cond_42

    const/16 p2, 0x13

    if-eq p1, p2, :cond_42

    if-eq p1, v2, :cond_42

    const/16 p2, 0x17

    if-ne p1, p2, :cond_45

    .line 365
    :cond_42
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_45
    const/4 p1, 0x1

    .line 367
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    :cond_49
    return-void

    .line 350
    :cond_4a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
