.class public final Landroid/media/internal/exo/audio/DtsUtil;
.super Ljava/lang/Object;
.source "DtsUtil.java"


# static fields
.field private static final blacklist CHANNELS_BY_AMODE:[I

.field private static final blacklist SAMPLE_RATE_BY_SFREQ:[I

.field private static final blacklist TWICE_BITRATE_KBPS_BY_RATE:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const/16 v0, 0x10

    .line 48
    new-array v1, v0, [I

    fill-array-data v1, :array_1a

    sput-object v1, Landroid/media/internal/exo/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    .line 52
    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, Landroid/media/internal/exo/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    const/16 v0, 0x1d

    .line 58
    new-array v0, v0, [I

    fill-array-data v0, :array_62

    sput-object v0, Landroid/media/internal/exo/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    return-void

    :array_1a
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x6
        0x6
        0x6
        0x7
        0x8
        0x8
    .end array-data

    :array_3e
    .array-data 4
        -0x1
        0x1f40
        0x3e80
        0x7d00
        -0x1
        -0x1
        0x2b11
        0x5622
        0xac44
        -0x1
        -0x1
        0x2ee0
        0x5dc0
        0xbb80
        -0x1
        -0x1
    .end array-data

    :array_62
    .array-data 4
        0x40
        0x70
        0x80
        0xc0
        0xe0
        0x100
        0x180
        0x1c0
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x600
        0x780
        0x800
        0x900
        0xa00
        0xa80
        0xb00
        0xb07
        0xb80
        0xc00
        0xf00
        0x1000
        0x1800
        0x1e00
    .end array-data
.end method

.method public static blacklist getDtsFrameSize([B)I
    .registers 8

    const/4 v0, 0x0

    .line 179
    aget-byte v1, p0, v0

    const/4 v2, -0x2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eq v1, v2, :cond_4f

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3e

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_26

    const/4 v1, 0x5

    .line 193
    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v3

    :goto_20
    and-int/lit16 p0, p0, 0xf0

    shr-int/2addr p0, v6

    or-int/2addr p0, v1

    add-int/2addr p0, v5

    goto :goto_5e

    .line 181
    :cond_26
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x8

    aget-byte p0, p0, v1

    :goto_36
    and-int/lit8 p0, p0, 0x3c

    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    add-int/2addr p0, v5

    move v0, v5

    goto :goto_5e

    .line 188
    :cond_3e
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xc

    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v6

    or-int/2addr v0, v1

    const/16 v1, 0x9

    aget-byte p0, p0, v1

    goto :goto_36

    .line 185
    :cond_4f
    aget-byte v1, p0, v6

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0xc

    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v6

    or-int/2addr v1, v2

    aget-byte p0, p0, v4

    goto :goto_20

    :goto_5e
    if-eqz v0, :cond_64

    mul-int/lit8 p0, p0, 0x10

    .line 197
    div-int/lit8 p0, p0, 0xe

    :cond_64
    return p0
.end method

.method private static blacklist getNormalizedFrameHeader([B)Landroid/media/internal/exo/util/ParsableBitArray;
    .registers 6

    const/4 v0, 0x0

    .line 201
    aget-byte v1, p0, v0

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_d

    .line 203
    new-instance v0, Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([B)V

    return-object v0

    .line 206
    :cond_d
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 207
    invoke-static {p0}, Landroid/media/internal/exo/audio/DtsUtil;->isLittleEndianFrameHeader([B)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v1, v0

    .line 209
    :goto_19
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2b

    .line 210
    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    .line 211
    aget-byte v4, p0, v3

    aput-byte v4, p0, v1

    .line 212
    aput-byte v2, p0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_19

    .line 215
    :cond_2b
    new-instance v1, Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-direct {v1, p0}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([B)V

    .line 216
    aget-byte v0, p0, v0

    const/16 v2, 0x1f

    if-ne v0, v2, :cond_51

    .line 218
    new-instance v0, Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>([B)V

    .line 219
    :goto_3b
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableBitArray;->bitsLeft()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_51

    const/4 v2, 0x2

    .line 220
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    const/16 v2, 0xe

    .line 221
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->putInt(II)V

    goto :goto_3b

    .line 224
    :cond_51
    invoke-virtual {v1, p0}, Landroid/media/internal/exo/util/ParsableBitArray;->reset([B)V

    return-object v1
.end method

.method private static blacklist isLittleEndianFrameHeader([B)Z
    .registers 3

    const/4 v0, 0x0

    .line 229
    aget-byte p0, p0, v0

    const/4 v1, -0x2

    if-eq p0, v1, :cond_b

    const/4 v1, -0x1

    if-ne p0, v1, :cond_a

    goto :goto_b

    :cond_a
    return v0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist isSyncWord(I)Z
    .registers 2

    .line 0
    const v0, 0x7ffe8001

    if-eq p0, v0, :cond_17

    const v0, -0x180fe80

    if-eq p0, v0, :cond_17

    const v0, 0x1fffe800

    if-eq p0, v0, :cond_17

    const v0, -0xe0ff18

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist parseDtsAudioSampleCount([B)I
    .registers 7

    const/4 v0, 0x0

    .line 125
    aget-byte v0, p0, v0

    const/4 v1, -0x2

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-eq v0, v1, :cond_2e

    const/4 v1, -0x1

    const/4 v5, 0x7

    if-eq v0, v1, :cond_27

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_1e

    .line 137
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v3

    aget-byte p0, p0, v2

    :goto_18
    and-int/lit16 p0, p0, 0xfc

    :goto_1a
    shr-int/lit8 p0, p0, 0x2

    or-int/2addr p0, v0

    goto :goto_36

    .line 133
    :cond_1e
    aget-byte v0, p0, v2

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v3

    :goto_24
    and-int/lit8 p0, p0, 0x3c

    goto :goto_1a

    .line 130
    :cond_27
    aget-byte v0, p0, v4

    and-int/2addr v0, v5

    shl-int/2addr v0, v4

    aget-byte p0, p0, v5

    goto :goto_24

    .line 127
    :cond_2e
    aget-byte v0, p0, v2

    and-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, v3

    aget-byte p0, p0, v4

    goto :goto_18

    :goto_36
    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 p0, p0, 0x20

    return p0
.end method

.method public static blacklist parseDtsFormat([BLjava/lang/String;Ljava/lang/String;Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format;
    .registers 10

    .line 93
    invoke-static {p0}, Landroid/media/internal/exo/audio/DtsUtil;->getNormalizedFrameHeader([B)Landroid/media/internal/exo/util/ParsableBitArray;

    move-result-object p0

    const/16 v0, 0x3c

    .line 94
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    const/4 v0, 0x6

    .line 95
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    .line 96
    sget-object v1, Landroid/media/internal/exo/audio/DtsUtil;->CHANNELS_BY_AMODE:[I

    aget v0, v1, v0

    const/4 v1, 0x4

    .line 97
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 98
    sget-object v2, Landroid/media/internal/exo/audio/DtsUtil;->SAMPLE_RATE_BY_SFREQ:[I

    aget v1, v2, v1

    const/4 v2, 0x5

    .line 99
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v2

    .line 101
    sget-object v3, Landroid/media/internal/exo/audio/DtsUtil;->TWICE_BITRATE_KBPS_BY_RATE:[I

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v2, v4, :cond_28

    const/4 v2, -0x1

    goto :goto_2d

    .line 103
    :cond_28
    aget v2, v3, v2

    mul-int/lit16 v2, v2, 0x3e8

    div-int/2addr v2, v5

    :goto_2d
    const/16 v3, 0xa

    .line 104
    invoke-virtual {p0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 105
    invoke-virtual {p0, v5}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-lez p0, :cond_3a

    const/4 p0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p0, 0x0

    :goto_3b
    add-int/2addr v0, p0

    .line 106
    new-instance p0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {p0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 107
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    const-string p1, "audio/vnd.dts"

    .line 108
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 109
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/Format$Builder;->setAverageBitrate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 110
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 111
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 112
    invoke-virtual {p0, p3}, Landroid/media/internal/exo/Format$Builder;->setDrmInitData(Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 113
    invoke-virtual {p0, p2}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p0

    return-object p0
.end method
