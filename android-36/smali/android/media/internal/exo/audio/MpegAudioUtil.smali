.class public final Landroid/media/internal/exo/audio/MpegAudioUtil;
.super Ljava/lang/Object;
.source "MpegAudioUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/audio/MpegAudioUtil$Header;
    }
.end annotation


# static fields
.field private static final blacklist BITRATE_V1_L1:[I

.field private static final blacklist BITRATE_V1_L2:[I

.field private static final blacklist BITRATE_V1_L3:[I

.field private static final blacklist BITRATE_V2:[I

.field private static final blacklist BITRATE_V2_L1:[I

.field private static final blacklist MIME_TYPE_BY_LAYER:[Ljava/lang/String;

.field private static final blacklist SAMPLING_RATE_V1:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 218
    const-string v0, "audio/mpeg-L2"

    const-string v1, "audio/mpeg"

    const-string v2, "audio/mpeg-L1"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/audio/MpegAudioUtil;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    const v0, 0xbb80

    const/16 v1, 0x7d00

    const v2, 0xac44

    .line 220
    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/audio/MpegAudioUtil;->SAMPLING_RATE_V1:[I

    const/16 v0, 0xe

    .line 221
    new-array v1, v0, [I

    fill-array-data v1, :array_40

    sput-object v1, Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V1_L1:[I

    .line 225
    new-array v1, v0, [I

    fill-array-data v1, :array_60

    sput-object v1, Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V2_L1:[I

    .line 229
    new-array v1, v0, [I

    fill-array-data v1, :array_80

    sput-object v1, Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V1_L2:[I

    .line 233
    new-array v1, v0, [I

    fill-array-data v1, :array_a0

    sput-object v1, Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V1_L3:[I

    .line 237
    new-array v0, v0, [I

    fill-array-data v0, :array_c0

    sput-object v0, Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V2:[I

    return-void

    :array_40
    .array-data 4
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
    .end array-data

    :array_60
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
    .end array-data

    :array_80
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
    .end array-data

    :array_a0
    .array-data 4
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
    .end array-data

    :array_c0
    .array-data 4
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
    .end array-data
.end method

.method static synthetic blacklist access$000(I)Z
    .registers 1

    .line 23
    invoke-static {p0}, Landroid/media/internal/exo/audio/MpegAudioUtil;->isMagicPresent(I)Z

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$100()[Ljava/lang/String;
    .registers 1

    .line 23
    sget-object v0, Landroid/media/internal/exo/audio/MpegAudioUtil;->MIME_TYPE_BY_LAYER:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$200()[I
    .registers 1

    .line 23
    sget-object v0, Landroid/media/internal/exo/audio/MpegAudioUtil;->SAMPLING_RATE_V1:[I

    return-object v0
.end method

.method static synthetic blacklist access$300(II)I
    .registers 2

    .line 23
    invoke-static {p0, p1}, Landroid/media/internal/exo/audio/MpegAudioUtil;->getFrameSizeInSamples(II)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist access$400()[I
    .registers 1

    .line 23
    sget-object v0, Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V1_L1:[I

    return-object v0
.end method

.method static synthetic blacklist access$500()[I
    .registers 1

    .line 23
    sget-object v0, Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V2_L1:[I

    return-object v0
.end method

.method static synthetic blacklist access$600()[I
    .registers 1

    .line 23
    sget-object v0, Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V1_L2:[I

    return-object v0
.end method

.method static synthetic blacklist access$700()[I
    .registers 1

    .line 23
    sget-object v0, Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V1_L3:[I

    return-object v0
.end method

.method static synthetic blacklist access$800()[I
    .registers 1

    .line 23
    sget-object v0, Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V2:[I

    return-object v0
.end method

.method public static blacklist getFrameSize(I)I
    .registers 8

    .line 116
    invoke-static {p0}, Landroid/media/internal/exo/audio/MpegAudioUtil;->isMagicPresent(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    return v1

    :cond_10
    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v2

    if-nez v4, :cond_16

    return v1

    :cond_16
    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_72

    if-ne v5, v6, :cond_20

    goto :goto_72

    :cond_20
    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_26

    return v1

    .line 141
    :cond_26
    sget-object v1, Landroid/media/internal/exo/audio/MpegAudioUtil;->SAMPLING_RATE_V1:[I

    aget v1, v1, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_30

    .line 144
    div-int/lit8 v1, v1, 0x2

    goto :goto_34

    :cond_30
    if-nez v0, :cond_34

    .line 147
    div-int/lit8 v1, v1, 0x4

    :cond_34
    :goto_34
    ushr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v3

    if-ne v4, v2, :cond_4d

    if-ne v0, v2, :cond_41

    .line 154
    sget-object v0, Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V1_L1:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_46

    :cond_41
    sget-object v0, Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V2_L1:[I

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_46
    mul-int/lit8 v0, v0, 0xc

    .line 155
    div-int/2addr v0, v1

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0

    :cond_4d
    if-ne v0, v2, :cond_5d

    if-ne v4, v6, :cond_57

    .line 159
    sget-object v6, Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V1_L2:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_62

    :cond_57
    sget-object v6, Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V1_L3:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    goto :goto_62

    .line 162
    :cond_5d
    sget-object v6, Landroid/media/internal/exo/audio/MpegAudioUtil;->BITRATE_V2:[I

    sub-int/2addr v5, v3

    aget v5, v6, v5

    :goto_62
    const/16 v6, 0x90

    if-ne v0, v2, :cond_6a

    mul-int/2addr v5, v6

    .line 168
    div-int/2addr v5, v1

    add-int/2addr v5, p0

    return v5

    :cond_6a
    if-ne v4, v3, :cond_6e

    const/16 v6, 0x48

    :cond_6e
    mul-int/2addr v6, v5

    .line 171
    div-int/2addr v6, v1

    add-int/2addr v6, p0

    return v6

    :cond_72
    :goto_72
    return v1
.end method

.method private static blacklist getFrameSizeInSamples(II)I
    .registers 5

    const/4 v0, 0x1

    const/16 v1, 0x480

    const/4 v2, 0x3

    if-eq p1, v0, :cond_15

    const/4 p0, 0x2

    if-eq p1, p0, :cond_14

    if-ne p1, v2, :cond_e

    const/16 p0, 0x180

    return p0

    .line 262
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_14
    return v1

    :cond_15
    if-ne p0, v2, :cond_18

    return v1

    :cond_18
    const/16 p0, 0x240

    return p0
.end method

.method private static blacklist isMagicPresent(I)Z
    .registers 2

    .line 0
    const/high16 v0, -0x200000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
