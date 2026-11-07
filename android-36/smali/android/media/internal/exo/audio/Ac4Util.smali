.class public final Landroid/media/internal/exo/audio/Ac4Util;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;
    }
.end annotation


# static fields
.field private static final blacklist SAMPLE_COUNT:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0xe

    .line 78
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/media/internal/exo/audio/Ac4Util;->SAMPLE_COUNT:[I

    return-void

    :array_a
    .array-data 4
        0x7d2
        0x7d0
        0x780
        0x641
        0x640
        0x3e9
        0x3e8
        0x3c0
        0x320
        0x320
        0x1e0
        0x190
        0x190
        0x800
    .end array-data
.end method

.method public static blacklist getAc4SampleHeader(ILandroid/media/internal/exo/util/ParsableByteArray;)V
    .registers 4

    const/4 v0, 0x7

    .line 225
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->reset(I)V

    .line 226
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, -0x54

    .line 227
    aput-byte v1, p1, v0

    const/4 v0, 0x1

    const/16 v1, 0x40

    .line 228
    aput-byte v1, p1, v0

    const/4 v0, 0x2

    const/4 v1, -0x1

    .line 229
    aput-byte v1, p1, v0

    const/4 v0, 0x3

    .line 230
    aput-byte v1, p1, v0

    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x4

    .line 231
    aput-byte v0, p1, v1

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x5

    .line 232
    aput-byte v0, p1, v1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v0, 0x6

    .line 233
    aput-byte p0, p1, v0

    return-void
.end method

.method public static blacklist parseAc4AnnexEFormat(Landroid/media/internal/exo/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format;
    .registers 5

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 109
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    shr-int/lit8 p0, p0, 0x5

    if-ne p0, v0, :cond_12

    const p0, 0xbb80

    goto :goto_15

    :cond_12
    const p0, 0xac44

    .line 110
    :goto_15
    new-instance v0, Landroid/media/internal/exo/Format$Builder;

    invoke-direct {v0}, Landroid/media/internal/exo/Format$Builder;-><init>()V

    .line 111
    invoke-virtual {v0, p1}, Landroid/media/internal/exo/Format$Builder;->setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    const-string v0, "audio/ac4"

    .line 112
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    const/4 v0, 0x2

    .line 113
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/Format$Builder;->setChannelCount(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p1

    .line 114
    invoke-virtual {p1, p0}, Landroid/media/internal/exo/Format$Builder;->setSampleRate(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 115
    invoke-virtual {p0, p3}, Landroid/media/internal/exo/Format$Builder;->setDrmInitData(Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 116
    invoke-virtual {p0, p2}, Landroid/media/internal/exo/Format$Builder;->setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroid/media/internal/exo/Format$Builder;->build()Landroid/media/internal/exo/Format;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseAc4SyncframeInfo(Landroid/media/internal/exo/util/ParsableBitArray;)Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;
    .registers 12

    const/16 v0, 0x10

    .line 129
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 131
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_18

    const/16 v0, 0x18

    .line 134
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/4 v2, 0x7

    goto :goto_19

    :cond_18
    move v2, v3

    :goto_19
    add-int/2addr v0, v2

    const v2, 0xac41

    if-ne v1, v2, :cond_21

    add-int/lit8 v0, v0, 0x2

    :cond_21
    move v8, v0

    const/4 v0, 0x2

    .line 141
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2f

    .line 143
    invoke-static {p0, v0}, Landroid/media/internal/exo/audio/Ac4Util;->readVariableBits(Landroid/media/internal/exo/util/ParsableBitArray;I)I

    move-result v4

    add-int/2addr v1, v4

    :cond_2f
    move v5, v1

    const/16 v1, 0xa

    .line 145
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 146
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 147
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-lez v4, :cond_45

    .line 148
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->skipBits(I)V

    .line 151
    :cond_45
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v4

    const v6, 0xac44

    const v7, 0xbb80

    if-eqz v4, :cond_53

    move v4, v7

    goto :goto_55

    :cond_53
    move v4, v7

    move v7, v6

    .line 152
    :goto_55
    invoke-virtual {p0, v3}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-ne v7, v6, :cond_65

    const/16 v6, 0xd

    if-ne p0, v6, :cond_65

    .line 155
    sget-object v0, Landroid/media/internal/exo/audio/Ac4Util;->SAMPLE_COUNT:[I

    aget p0, v0, p0

    :goto_63
    move v9, p0

    goto :goto_95

    :cond_65
    if-ne v7, v4, :cond_93

    .line 156
    sget-object v4, Landroid/media/internal/exo/audio/Ac4Util;->SAMPLE_COUNT:[I

    array-length v6, v4

    if-ge p0, v6, :cond_93

    .line 157
    aget v4, v4, p0

    .line 158
    rem-int/lit8 v1, v1, 0x5

    const/16 v6, 0x8

    const/4 v9, 0x1

    if-eq v1, v9, :cond_8c

    const/16 v9, 0xb

    if-eq v1, v0, :cond_87

    if-eq v1, v2, :cond_8c

    if-eq v1, v3, :cond_7e

    goto :goto_91

    :cond_7e
    if-eq p0, v2, :cond_84

    if-eq p0, v6, :cond_84

    if-ne p0, v9, :cond_91

    :cond_84
    :goto_84
    add-int/lit8 p0, v4, 0x1

    goto :goto_63

    :cond_87
    if-eq p0, v6, :cond_84

    if-ne p0, v9, :cond_91

    goto :goto_84

    :cond_8c
    if-eq p0, v2, :cond_84

    if-ne p0, v6, :cond_91

    goto :goto_84

    :cond_91
    :goto_91
    move v9, v4

    goto :goto_95

    :cond_93
    const/4 p0, 0x0

    goto :goto_63

    .line 179
    :goto_95
    new-instance v4, Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;

    const/4 v6, 0x2

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Landroid/media/internal/exo/audio/Ac4Util$SyncFrameInfo;-><init>(IIIIILandroid/media/internal/exo/audio/Ac4Util$1;)V

    return-object v4
.end method

.method public static blacklist parseAc4SyncframeSize([BI)I
    .registers 6

    .line 190
    array-length v0, p0

    const/4 v1, 0x7

    if-ge v0, v1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x2

    .line 194
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    const v2, 0xffff

    const/4 v3, 0x4

    if-ne v0, v2, :cond_2e

    .line 197
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    const/4 v2, 0x6

    aget-byte p0, p0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr v0, p0

    goto :goto_2f

    :cond_2e
    move v1, v3

    :goto_2f
    const p0, 0xac41

    if-ne p1, p0, :cond_36

    add-int/lit8 v1, v1, 0x2

    :cond_36
    add-int/2addr v0, v1

    return v0
.end method

.method private static blacklist readVariableBits(Landroid/media/internal/exo/util/ParsableBitArray;I)I
    .registers 4

    const/4 v0, 0x0

    .line 239
    :goto_1
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBit()Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    shl-int/2addr v0, p1

    goto :goto_1
.end method
