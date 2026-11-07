.class public final Landroid/media/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFormat$SurroundSoundEncoding;,
        Landroid/media/AudioFormat$EncodingCanBeInvalid;,
        Landroid/media/AudioFormat$Encoding;,
        Landroid/media/AudioFormat$Builder;,
        Landroid/media/AudioFormat$ChannelOut;
    }
.end annotation


# static fields
.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_INDEX_MASK:I = 0x8

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_MASK:I = 0x4

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_ENCODING:I = 0x1

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_NONE:I = 0x0

.field public static final greylist-max-o AUDIO_FORMAT_HAS_PROPERTY_SAMPLE_RATE:I = 0x2

.field public static final whitelist CHANNEL_CONFIGURATION_DEFAULT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_CONFIGURATION_INVALID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_CONFIGURATION_MONO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_CONFIGURATION_STEREO:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_INVALID:I = 0x0

.field public static final blacklist CHANNEL_IN_2POINT0POINT2:I = 0x60000c

.field public static final blacklist CHANNEL_IN_2POINT1POINT2:I = 0x70000c

.field public static final blacklist CHANNEL_IN_3POINT0POINT2:I = 0x64000c

.field public static final blacklist CHANNEL_IN_3POINT1POINT2:I = 0x74000c

.field public static final blacklist CHANNEL_IN_5POINT1:I = 0x17000c

.field public static final whitelist CHANNEL_IN_BACK:I = 0x20

.field public static final blacklist CHANNEL_IN_BACK_LEFT:I = 0x10000

.field public static final whitelist CHANNEL_IN_BACK_PROCESSED:I = 0x200

.field public static final blacklist CHANNEL_IN_BACK_RIGHT:I = 0x20000

.field public static final blacklist CHANNEL_IN_CENTER:I = 0x40000

.field public static final whitelist CHANNEL_IN_DEFAULT:I = 0x1

.field public static final whitelist CHANNEL_IN_FRONT:I = 0x10

.field public static final greylist-max-o CHANNEL_IN_FRONT_BACK:I = 0x30

.field public static final whitelist CHANNEL_IN_FRONT_PROCESSED:I = 0x100

.field public static final whitelist CHANNEL_IN_LEFT:I = 0x4

.field public static final whitelist CHANNEL_IN_LEFT_PROCESSED:I = 0x40

.field public static final blacklist CHANNEL_IN_LOW_FREQUENCY:I = 0x100000

.field public static final whitelist CHANNEL_IN_MONO:I = 0x10

.field public static final whitelist CHANNEL_IN_PRESSURE:I = 0x400

.field public static final whitelist CHANNEL_IN_RIGHT:I = 0x8

.field public static final whitelist CHANNEL_IN_RIGHT_PROCESSED:I = 0x80

.field public static final whitelist CHANNEL_IN_STEREO:I = 0xc

.field public static final blacklist CHANNEL_IN_TOP_LEFT:I = 0x200000

.field public static final blacklist CHANNEL_IN_TOP_RIGHT:I = 0x400000

.field public static final whitelist CHANNEL_IN_VOICE_DNLINK:I = 0x8000

.field public static final whitelist CHANNEL_IN_VOICE_UPLINK:I = 0x4000

.field public static final whitelist CHANNEL_IN_X_AXIS:I = 0x800

.field public static final whitelist CHANNEL_IN_Y_AXIS:I = 0x1000

.field public static final whitelist CHANNEL_IN_Z_AXIS:I = 0x2000

.field public static final blacklist CHANNEL_OUT_13POINT0:I = 0x1cbd81c

.field public static final blacklist CHANNEL_OUT_22POINT2:I = 0x3fffffc

.field public static final whitelist CHANNEL_OUT_5POINT1:I = 0xfc

.field public static final whitelist CHANNEL_OUT_5POINT1POINT2:I = 0x3000fc

.field public static final whitelist CHANNEL_OUT_5POINT1POINT4:I = 0xb40fc

.field public static final greylist-max-o CHANNEL_OUT_5POINT1_SIDE:I = 0x183c

.field public static final whitelist CHANNEL_OUT_6POINT1:I = 0x4fc

.field public static final whitelist CHANNEL_OUT_7POINT1:I = 0x3fc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CHANNEL_OUT_7POINT1POINT2:I = 0x3018fc

.field public static final whitelist CHANNEL_OUT_7POINT1POINT4:I = 0xb58fc

.field public static final whitelist CHANNEL_OUT_7POINT1_SURROUND:I = 0x18fc

.field public static final whitelist CHANNEL_OUT_9POINT1POINT4:I = 0xc0b58fc

.field public static final whitelist CHANNEL_OUT_9POINT1POINT6:I = 0xc3b58fc

.field public static final whitelist CHANNEL_OUT_BACK_CENTER:I = 0x400

.field public static final whitelist CHANNEL_OUT_BACK_LEFT:I = 0x40

.field public static final whitelist CHANNEL_OUT_BACK_RIGHT:I = 0x80

.field public static final whitelist CHANNEL_OUT_BOTTOM_FRONT_CENTER:I = 0x800000

.field public static final whitelist CHANNEL_OUT_BOTTOM_FRONT_LEFT:I = 0x400000

.field public static final whitelist CHANNEL_OUT_BOTTOM_FRONT_RIGHT:I = 0x1000000

.field public static final whitelist CHANNEL_OUT_DEFAULT:I = 0x1

.field public static final whitelist CHANNEL_OUT_FRONT_CENTER:I = 0x10

.field public static final whitelist CHANNEL_OUT_FRONT_LEFT:I = 0x4

.field public static final whitelist CHANNEL_OUT_FRONT_LEFT_OF_CENTER:I = 0x100

.field public static final whitelist CHANNEL_OUT_FRONT_RIGHT:I = 0x8

.field public static final whitelist CHANNEL_OUT_FRONT_RIGHT_OF_CENTER:I = 0x200

.field public static final whitelist CHANNEL_OUT_FRONT_WIDE_LEFT:I = 0x4000000

.field public static final whitelist CHANNEL_OUT_FRONT_WIDE_RIGHT:I = 0x8000000

.field public static final blacklist CHANNEL_OUT_HAPTIC_A:I = 0x20000000

.field public static final blacklist CHANNEL_OUT_HAPTIC_B:I = 0x10000000

.field public static final whitelist CHANNEL_OUT_LOW_FREQUENCY:I = 0x20

.field public static final whitelist CHANNEL_OUT_LOW_FREQUENCY_2:I = 0x2000000

.field public static final whitelist CHANNEL_OUT_MONO:I = 0x4

.field public static final whitelist CHANNEL_OUT_QUAD:I = 0xcc

.field public static final greylist-max-o CHANNEL_OUT_QUAD_SIDE:I = 0x180c

.field public static final whitelist CHANNEL_OUT_SIDE_LEFT:I = 0x800

.field public static final whitelist CHANNEL_OUT_SIDE_RIGHT:I = 0x1000

.field public static final whitelist CHANNEL_OUT_STEREO:I = 0xc

.field public static final whitelist CHANNEL_OUT_SURROUND:I = 0x41c

.field public static final whitelist CHANNEL_OUT_TOP_BACK_CENTER:I = 0x40000

.field public static final whitelist CHANNEL_OUT_TOP_BACK_LEFT:I = 0x20000

.field public static final whitelist CHANNEL_OUT_TOP_BACK_RIGHT:I = 0x80000

.field public static final whitelist CHANNEL_OUT_TOP_CENTER:I = 0x2000

.field public static final whitelist CHANNEL_OUT_TOP_FRONT_CENTER:I = 0x8000

.field public static final whitelist CHANNEL_OUT_TOP_FRONT_LEFT:I = 0x4000

.field public static final whitelist CHANNEL_OUT_TOP_FRONT_RIGHT:I = 0x10000

.field public static final whitelist CHANNEL_OUT_TOP_SIDE_LEFT:I = 0x100000

.field public static final whitelist CHANNEL_OUT_TOP_SIDE_RIGHT:I = 0x200000

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ENCODING_AAC_ELD:I = 0xf

.field public static final whitelist ENCODING_AAC_HE_V1:I = 0xb

.field public static final whitelist ENCODING_AAC_HE_V2:I = 0xc

.field public static final whitelist ENCODING_AAC_LC:I = 0xa

.field public static final whitelist ENCODING_AAC_XHE:I = 0x10

.field public static final whitelist ENCODING_AC3:I = 0x5

.field public static final whitelist ENCODING_AC4:I = 0x11

.field public static final blacklist ENCODING_AC4_L4:I = 0x20

.field public static final whitelist ENCODING_DEFAULT:I = 0x1

.field public static final whitelist ENCODING_DOLBY_MAT:I = 0x13

.field public static final whitelist ENCODING_DOLBY_TRUEHD:I = 0xe

.field public static final whitelist ENCODING_DRA:I = 0x1c

.field public static final whitelist ENCODING_DSD:I = 0x1f

.field public static final whitelist ENCODING_DTS:I = 0x7

.field public static final whitelist ENCODING_DTS_HD:I = 0x8

.field public static final whitelist ENCODING_DTS_HD_MA:I = 0x1d

.field public static final whitelist ENCODING_DTS_UHD:I = 0x1b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ENCODING_DTS_UHD_P1:I = 0x1b

.field public static final whitelist ENCODING_DTS_UHD_P2:I = 0x1e

.field public static final whitelist ENCODING_E_AC3:I = 0x6

.field public static final whitelist ENCODING_E_AC3_JOC:I = 0x12

.field public static final whitelist ENCODING_IAMF_BASE_ENHANCED_PROFILE_AAC:I = 0x2a

.field public static final whitelist ENCODING_IAMF_BASE_ENHANCED_PROFILE_FLAC:I = 0x2b

.field public static final whitelist ENCODING_IAMF_BASE_ENHANCED_PROFILE_OPUS:I = 0x29

.field public static final whitelist ENCODING_IAMF_BASE_ENHANCED_PROFILE_PCM:I = 0x2c

.field public static final whitelist ENCODING_IAMF_BASE_PROFILE_AAC:I = 0x26

.field public static final whitelist ENCODING_IAMF_BASE_PROFILE_FLAC:I = 0x27

.field public static final whitelist ENCODING_IAMF_BASE_PROFILE_OPUS:I = 0x25

.field public static final whitelist ENCODING_IAMF_BASE_PROFILE_PCM:I = 0x28

.field public static final whitelist ENCODING_IAMF_SIMPLE_PROFILE_AAC:I = 0x22

.field public static final whitelist ENCODING_IAMF_SIMPLE_PROFILE_FLAC:I = 0x23

.field public static final whitelist ENCODING_IAMF_SIMPLE_PROFILE_OPUS:I = 0x21

.field public static final whitelist ENCODING_IAMF_SIMPLE_PROFILE_PCM:I = 0x24

.field public static final whitelist ENCODING_IEC61937:I = 0xd

.field public static final whitelist ENCODING_INVALID:I = 0x0

.field public static final blacklist ENCODING_LEGACY_SHORT_ARRAY_THRESHOLD:I = 0x14

.field public static final whitelist ENCODING_MP3:I = 0x9

.field public static final whitelist ENCODING_MPEGH_BL_L3:I = 0x17

.field public static final whitelist ENCODING_MPEGH_BL_L4:I = 0x18

.field public static final whitelist ENCODING_MPEGH_LC_L3:I = 0x19

.field public static final whitelist ENCODING_MPEGH_LC_L4:I = 0x1a

.field public static final whitelist ENCODING_OPUS:I = 0x14

.field public static final whitelist ENCODING_PCM_16BIT:I = 0x2

.field public static final whitelist ENCODING_PCM_24BIT_PACKED:I = 0x15

.field public static final whitelist ENCODING_PCM_32BIT:I = 0x16

.field public static final whitelist ENCODING_PCM_8BIT:I = 0x3

.field public static final whitelist ENCODING_PCM_FLOAT:I = 0x4

.field public static final greylist-max-o SAMPLE_RATE_HZ_MAX:I

.field public static final greylist-max-o SAMPLE_RATE_HZ_MIN:I

.field public static final whitelist SAMPLE_RATE_UNSPECIFIED:I

.field public static final greylist-max-o SURROUND_SOUND_ENCODING:[I


# instance fields
.field private final blacklist mChannelCount:I

.field private final greylist-max-o mChannelIndexMask:I

.field private final greylist-max-r mChannelMask:I

.field private final greylist-max-r mEncoding:I

.field private final blacklist mFrameSizeInBytes:I

.field private final greylist-max-o mPropertySetMask:I

.field private final greylist-max-r mSampleRate:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChannelIndexMask(Landroid/media/AudioFormat;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannelMask(Landroid/media/AudioFormat;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEncoding(Landroid/media/AudioFormat;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPropertySetMask(Landroid/media/AudioFormat;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSampleRate(Landroid/media/AudioFormat;)I
    .registers 1

    iget p0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 782
    sget v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MIN:I

    sput v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MIN:I

    .line 788
    sget v0, Landroid/media/AudioSystem;->SAMPLE_RATE_HZ_MAX:I

    sput v0, Landroid/media/AudioFormat;->SAMPLE_RATE_HZ_MAX:I

    .line 1714
    new-instance v0, Landroid/media/AudioFormat$1;

    invoke-direct {v0}, Landroid/media/AudioFormat$1;-><init>()V

    sput-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1836
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    return-void

    nop

    :array_1a
    .array-data 4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xe
        0x11
        0x20
        0x12
        0x13
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
    .end array-data
.end method

.method public constructor greylist <init>()V
    .registers 3

    .line 1263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "There is no valid usage of this constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-r <init>(IIII)V
    .registers 11
    .param p1, "encoding"    # I
    .param p2, "sampleRate"    # I
    .param p3, "channelMask"    # I
    .param p4, "channelIndexMask"    # I

    .line 1274
    const/16 v1, 0xf

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "encoding":I
    .end local p2    # "sampleRate":I
    .end local p3    # "channelMask":I
    .end local p4    # "channelIndexMask":I
    .local v2, "encoding":I
    .local v3, "sampleRate":I
    .local v4, "channelMask":I
    .local v5, "channelIndexMask":I
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioFormat;-><init>(IIIII)V

    .line 1281
    return-void
.end method

.method private constructor blacklist <init>(IIIII)V
    .registers 10
    .param p1, "propertySetMask"    # I
    .param p2, "encoding"    # I
    .param p3, "sampleRate"    # I
    .param p4, "channelMask"    # I
    .param p5, "channelIndexMask"    # I

    .line 1284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1285
    iput p1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    .line 1286
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 1287
    move v0, p2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    iput v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    .line 1288
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_15

    .line 1289
    move v0, p3

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    iput v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    .line 1290
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1e

    .line 1291
    move v0, p4

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    iput v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    .line 1292
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_27

    .line 1293
    move v1, p5

    goto :goto_28

    :cond_27
    nop

    :goto_28
    iput v1, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    .line 1297
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    .line 1298
    .local v0, "channelIndexCount":I
    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    .line 1299
    .local v1, "channelCount":I
    if-nez v1, :cond_3e

    .line 1300
    move v1, v0

    goto :goto_43

    .line 1301
    :cond_3e
    if-eq v1, v0, :cond_43

    if-eqz v0, :cond_43

    .line 1302
    const/4 v1, 0x0

    .line 1304
    :cond_43
    :goto_43
    iput v1, p0, Landroid/media/AudioFormat;->mChannelCount:I

    .line 1306
    const/4 v2, 0x1

    .line 1308
    .local v2, "frameSizeInBytes":I
    :try_start_46
    iget v3, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-static {v3}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v3
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_4c} :catch_4f

    mul-int v2, v3, v1

    .line 1311
    goto :goto_50

    .line 1309
    :catch_4f
    move-exception v3

    .line 1314
    :goto_50
    if-eqz v2, :cond_54

    move v3, v2

    goto :goto_55

    :cond_54
    const/4 v3, 0x1

    :goto_55
    iput v3, p0, Landroid/media/AudioFormat;->mFrameSizeInBytes:I

    .line 1315
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/media/AudioFormat-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/media/AudioFormat;-><init>(IIIII)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1705
    nop

    .line 1706
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1707
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1708
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1709
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1710
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1705
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioFormat;-><init>(IIIII)V

    .line 1712
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/AudioFormat-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioFormat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist channelCountFromInChannelMask(I)I
    .registers 2
    .param p0, "mask"    # I

    .line 826
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static blacklist channelCountFromOutChannelMask(I)I
    .registers 2
    .param p0, "mask"    # I

    .line 836
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o convertChannelOutMaskToNativeMask(I)I
    .registers 2
    .param p0, "javaMask"    # I

    .line 845
    shr-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static greylist-max-o convertNativeChannelMaskToOutMask(I)I
    .registers 2
    .param p0, "nativeMask"    # I

    .line 855
    shl-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static greylist-max-o filterPublicFormats([I)[I
    .registers 5
    .param p0, "formats"    # [I

    .line 1245
    if-nez p0, :cond_4

    .line 1246
    const/4 v0, 0x0

    return-object v0

    .line 1248
    :cond_4
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 1249
    .local v0, "myCopy":[I
    const/4 v1, 0x0

    .line 1250
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v0

    if-ge v2, v3, :cond_21

    .line 1251
    aget v3, v0, v2

    invoke-static {v3}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1252
    if-eq v1, v2, :cond_1c

    .line 1253
    aget v3, v0, v2

    aput v3, v0, v1

    .line 1255
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 1250
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1258
    .end local v2    # "i":I
    :cond_21
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    return-object v2
.end method

.method public static blacklist getBytesPerSample(I)I
    .registers 4
    .param p0, "audioFormat"    # I

    .line 1005
    sparse-switch p0, :sswitch_data_24

    .line 1019
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1013
    :sswitch_1c
    const/4 v0, 0x3

    return v0

    .line 1016
    :sswitch_1e
    const/4 v0, 0x4

    return v0

    .line 1007
    :sswitch_20
    const/4 v0, 0x1

    return v0

    .line 1011
    :sswitch_22
    const/4 v0, 0x2

    return v0

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_22
        0x2 -> :sswitch_22
        0x3 -> :sswitch_20
        0x4 -> :sswitch_1e
        0xd -> :sswitch_22
        0x15 -> :sswitch_1c
        0x16 -> :sswitch_1e
    .end sparse-switch
.end method

.method public static greylist-max-o inChannelMaskFromOutChannelMask(I)I
    .registers 3
    .param p0, "outMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 804
    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    .line 808
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 814
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 812
    :pswitch_12
    const/16 v0, 0xc

    return v0

    .line 810
    :pswitch_15
    const/16 v0, 0x10

    return v0

    .line 805
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal CHANNEL_OUT_DEFAULT channel mask for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method

.method public static greylist-max-o isEncodingLinearFrames(I)Z
    .registers 4
    .param p0, "audioFormat"    # I

    .line 1188
    packed-switch p0, :pswitch_data_20

    .line 1236
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :pswitch_1c
    const/4 v0, 0x0

    return v0

    .line 1196
    :pswitch_1e
    const/4 v0, 0x1

    return v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1e
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_3
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist isEncodingLinearPcm(I)Z
    .registers 4
    .param p0, "audioFormat"    # I

    .line 1133
    packed-switch p0, :pswitch_data_20

    .line 1181
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1178
    :pswitch_1c
    const/4 v0, 0x0

    return v0

    .line 1140
    :pswitch_1e
    const/4 v0, 0x1

    return v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1e
        :pswitch_1e
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_3
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public static greylist-max-o isPublicEncoding(I)Z
    .registers 2
    .param p0, "audioFormat"    # I

    .line 1079
    packed-switch p0, :pswitch_data_8

    .line 1125
    const/4 v0, 0x0

    return v0

    .line 1123
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static greylist-max-o isValidEncoding(I)Z
    .registers 2
    .param p0, "audioFormat"    # I

    .line 1026
    packed-switch p0, :pswitch_data_8

    .line 1072
    const/4 v0, 0x0

    return v0

    .line 1070
    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist javaChannelOutMaskToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "javaMask"    # I

    .line 867
    const/high16 v0, 0x30000000

    and-int v1, p0, v0

    .line 869
    .local v1, "haptics":I
    const v2, -0x30000001

    and-int/2addr p0, v2

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 871
    .local v2, "result":Ljava/lang/StringBuilder;
    sparse-switch p0, :sswitch_data_b8

    .line 927
    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8f

    .line 918
    :sswitch_21
    const-string v3, "9.1.6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    goto/16 :goto_8f

    .line 915
    :sswitch_28
    const-string v3, "9.1.4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    goto/16 :goto_8f

    .line 924
    :sswitch_2f
    const-string v3, "22.2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    goto :goto_8f

    .line 921
    :sswitch_35
    const-string v3, "360RA 13ch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    goto :goto_8f

    .line 909
    :sswitch_3b
    const-string v3, "7.1.2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    goto :goto_8f

    .line 903
    :sswitch_41
    const-string v3, "5.1.2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    goto :goto_8f

    .line 912
    :sswitch_47
    const-string v3, "7.1.4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    goto :goto_8f

    .line 906
    :sswitch_4d
    const-string v3, "5.1.4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    goto :goto_8f

    .line 900
    :sswitch_53
    const-string v3, "7.1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    goto :goto_8f

    .line 894
    :sswitch_59
    const-string v3, "5.1 side"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    goto :goto_8f

    .line 882
    :sswitch_5f
    const-string v3, "quad side"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    goto :goto_8f

    .line 891
    :sswitch_65
    const-string v3, "6.1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    goto :goto_8f

    .line 885
    :sswitch_6b
    const-string v3, "4.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    goto :goto_8f

    .line 897
    :sswitch_71
    const-string v3, "7.1 (5 fronts)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    goto :goto_8f

    .line 888
    :sswitch_77
    const-string v3, "5.1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    goto :goto_8f

    .line 879
    :sswitch_7d
    const-string v3, "quad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    goto :goto_8f

    .line 876
    :sswitch_83
    const-string v3, "stereo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    goto :goto_8f

    .line 873
    :sswitch_89
    const-string v3, "mono"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 874
    nop

    .line 930
    :goto_8f
    and-int/2addr v0, v1

    if-eqz v0, :cond_b2

    .line 931
    const-string v0, "(+haptic "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    const/high16 v0, 0x20000000

    and-int v3, v1, v0

    if-ne v3, v0, :cond_a2

    .line 933
    const-string v0, "A"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    :cond_a2
    const/high16 v0, 0x10000000

    and-int v3, v1, v0

    if-ne v3, v0, :cond_ad

    .line 936
    const-string v0, "B"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    :cond_ad
    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    :cond_b2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_b8
    .sparse-switch
        0x4 -> :sswitch_89
        0xc -> :sswitch_83
        0xcc -> :sswitch_7d
        0xfc -> :sswitch_77
        0x3fc -> :sswitch_71
        0x41c -> :sswitch_6b
        0x4fc -> :sswitch_65
        0x180c -> :sswitch_5f
        0x183c -> :sswitch_59
        0x18fc -> :sswitch_53
        0xb40fc -> :sswitch_4d
        0xb58fc -> :sswitch_47
        0x3000fc -> :sswitch_41
        0x3018fc -> :sswitch_3b
        0x1cbd81c -> :sswitch_35
        0x3fffffc -> :sswitch_2f
        0xc0b58fc -> :sswitch_28
        0xc3b58fc -> :sswitch_21
    .end sparse-switch
.end method

.method public static greylist-max-o toDisplayName(I)Ljava/lang/String;
    .registers 2
    .param p0, "audioFormat"    # I

    .line 1891
    packed-switch p0, :pswitch_data_3c

    .line 1929
    :pswitch_3
    const-string v0, "Unknown surround sound format"

    return-object v0

    .line 1907
    :pswitch_6
    const-string v0, "Dolby AC-4 level 4"

    return-object v0

    .line 1927
    :pswitch_9
    const-string v0, "DTS UHD Profile 2"

    return-object v0

    .line 1925
    :pswitch_c
    const-string v0, "DTS HD Master Audio"

    return-object v0

    .line 1923
    :pswitch_f
    const-string v0, "DRA"

    return-object v0

    .line 1921
    :pswitch_12
    const-string v0, "DTS UHD Profile 1"

    return-object v0

    .line 1919
    :pswitch_15
    const-string v0, "MPEG-H 3D Audio low complexity profile level 4"

    return-object v0

    .line 1917
    :pswitch_18
    const-string v0, "MPEG-H 3D Audio low complexity profile level 3"

    return-object v0

    .line 1915
    :pswitch_1b
    const-string v0, "MPEG-H 3D Audio baseline profile level 4"

    return-object v0

    .line 1913
    :pswitch_1e
    const-string v0, "MPEG-H 3D Audio baseline profile level 3"

    return-object v0

    .line 1911
    :pswitch_21
    const-string v0, "Dolby MAT"

    return-object v0

    .line 1909
    :pswitch_24
    const-string v0, "Dolby Atmos in Dolby Digital Plus"

    return-object v0

    .line 1905
    :pswitch_27
    const-string v0, "Dolby AC-4 levels 0-3"

    return-object v0

    .line 1903
    :pswitch_2a
    const-string v0, "Dolby TrueHD"

    return-object v0

    .line 1901
    :pswitch_2d
    const-string v0, "AAC"

    return-object v0

    .line 1899
    :pswitch_30
    const-string v0, "DTS HD"

    return-object v0

    .line 1897
    :pswitch_33
    const-string v0, "DTS"

    return-object v0

    .line 1895
    :pswitch_36
    const-string v0, "Dolby Digital Plus"

    return-object v0

    .line 1893
    :pswitch_39
    const-string v0, "Dolby Digital"

    return-object v0

    :pswitch_data_3c
    .packed-switch 0x5
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_3
        :pswitch_2d
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2a
        :pswitch_3
        :pswitch_3
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public static greylist-max-o toLogFriendlyEncoding(I)Ljava/lang/String;
    .registers 3
    .param p0, "enc"    # I

    .line 486
    packed-switch p0, :pswitch_data_9c

    .line 576
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid encoding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 558
    :pswitch_17
    const-string v0, "ENCODING_IAMF_BASE_ENHANCED_PROFILE_PCM"

    return-object v0

    .line 554
    :pswitch_1a
    const-string v0, "ENCODING_IAMF_BASE_ENHANCED_PROFILE_FLAC"

    return-object v0

    .line 552
    :pswitch_1d
    const-string v0, "ENCODING_IAMF_BASE_ENHANCED_PROFILE_AAC"

    return-object v0

    .line 556
    :pswitch_20
    const-string v0, "ENCODING_IAMF_BASE_ENHANCED_PROFILE_OPUS"

    return-object v0

    .line 566
    :pswitch_23
    const-string v0, "ENCODING_IAMF_BASE_PROFILE_PCM"

    return-object v0

    .line 562
    :pswitch_26
    const-string v0, "ENCODING_IAMF_BASE_PROFILE_FLAC"

    return-object v0

    .line 560
    :pswitch_29
    const-string v0, "ENCODING_IAMF_BASE_PROFILE_AAC"

    return-object v0

    .line 564
    :pswitch_2c
    const-string v0, "ENCODING_IAMF_BASE_PROFILE_OPUS"

    return-object v0

    .line 574
    :pswitch_2f
    const-string v0, "ENCODING_IAMF_SIMPLE_PROFILE_PCM"

    return-object v0

    .line 570
    :pswitch_32
    const-string v0, "ENCODING_IAMF_SIMPLE_PROFILE_FLAC"

    return-object v0

    .line 568
    :pswitch_35
    const-string v0, "ENCODING_IAMF_SIMPLE_PROFILE_AAC"

    return-object v0

    .line 572
    :pswitch_38
    const-string v0, "ENCODING_IAMF_SIMPLE_PROFILE_OPUS"

    return-object v0

    .line 522
    :pswitch_3b
    const-string v0, "ENCODING_AC4_L4"

    return-object v0

    .line 550
    :pswitch_3e
    const-string v0, "ENCODING_DSD"

    return-object v0

    .line 548
    :pswitch_41
    const-string v0, "ENCODING_DTS_UHD_P2"

    return-object v0

    .line 546
    :pswitch_44
    const-string v0, "ENCODING_DTS_HD_MA"

    return-object v0

    .line 544
    :pswitch_47
    const-string v0, "ENCODING_DRA"

    return-object v0

    .line 542
    :pswitch_4a
    const-string v0, "ENCODING_DTS_UHD_P1"

    return-object v0

    .line 540
    :pswitch_4d
    const-string v0, "ENCODING_MPEGH_LC_L4"

    return-object v0

    .line 538
    :pswitch_50
    const-string v0, "ENCODING_MPEGH_LC_L3"

    return-object v0

    .line 536
    :pswitch_53
    const-string v0, "ENCODING_MPEGH_BL_L4"

    return-object v0

    .line 534
    :pswitch_56
    const-string v0, "ENCODING_MPEGH_BL_L3"

    return-object v0

    .line 532
    :pswitch_59
    const-string v0, "ENCODING_PCM_32BIT"

    return-object v0

    .line 530
    :pswitch_5c
    const-string v0, "ENCODING_PCM_24BIT_PACKED"

    return-object v0

    .line 528
    :pswitch_5f
    const-string v0, "ENCODING_OPUS"

    return-object v0

    .line 526
    :pswitch_62
    const-string v0, "ENCODING_DOLBY_MAT"

    return-object v0

    .line 524
    :pswitch_65
    const-string v0, "ENCODING_E_AC3_JOC"

    return-object v0

    .line 520
    :pswitch_68
    const-string v0, "ENCODING_AC4"

    return-object v0

    .line 518
    :pswitch_6b
    const-string v0, "ENCODING_AAC_XHE"

    return-object v0

    .line 516
    :pswitch_6e
    const-string v0, "ENCODING_AAC_ELD"

    return-object v0

    .line 514
    :pswitch_71
    const-string v0, "ENCODING_DOLBY_TRUEHD"

    return-object v0

    .line 512
    :pswitch_74
    const-string v0, "ENCODING_IEC61937"

    return-object v0

    .line 510
    :pswitch_77
    const-string v0, "ENCODING_AAC_HE_V2"

    return-object v0

    .line 508
    :pswitch_7a
    const-string v0, "ENCODING_AAC_HE_V1"

    return-object v0

    .line 506
    :pswitch_7d
    const-string v0, "ENCODING_AAC_LC"

    return-object v0

    .line 504
    :pswitch_80
    const-string v0, "ENCODING_MP3"

    return-object v0

    .line 502
    :pswitch_83
    const-string v0, "ENCODING_DTS_HD"

    return-object v0

    .line 500
    :pswitch_86
    const-string v0, "ENCODING_DTS"

    return-object v0

    .line 498
    :pswitch_89
    const-string v0, "ENCODING_E_AC3"

    return-object v0

    .line 496
    :pswitch_8c
    const-string v0, "ENCODING_AC3"

    return-object v0

    .line 494
    :pswitch_8f
    const-string v0, "ENCODING_PCM_FLOAT"

    return-object v0

    .line 492
    :pswitch_92
    const-string v0, "ENCODING_PCM_8BIT"

    return-object v0

    .line 490
    :pswitch_95
    const-string v0, "ENCODING_PCM_16BIT"

    return-object v0

    .line 488
    :pswitch_98
    const-string v0, "ENCODING_INVALID"

    return-object v0

    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_98
        :pswitch_3
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1692
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1666
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1667
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4e

    .line 1669
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/media/AudioFormat;

    .line 1671
    .local v2, "that":Landroid/media/AudioFormat;
    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    iget v4, v2, Landroid/media/AudioFormat;->mPropertySetMask:I

    if-eq v3, v4, :cond_1c

    return v1

    .line 1674
    :cond_1c
    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_27

    iget v3, p0, Landroid/media/AudioFormat;->mEncoding:I

    iget v4, v2, Landroid/media/AudioFormat;->mEncoding:I

    if-ne v3, v4, :cond_4c

    :cond_27
    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_33

    iget v3, p0, Landroid/media/AudioFormat;->mSampleRate:I

    iget v4, v2, Landroid/media/AudioFormat;->mSampleRate:I

    if-ne v3, v4, :cond_4c

    :cond_33
    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3f

    iget v3, p0, Landroid/media/AudioFormat;->mChannelMask:I

    iget v4, v2, Landroid/media/AudioFormat;->mChannelMask:I

    if-ne v3, v4, :cond_4c

    :cond_3f
    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4d

    iget v3, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    iget v4, v2, Landroid/media/AudioFormat;->mChannelIndexMask:I

    if-ne v3, v4, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v1

    :cond_4d
    :goto_4d
    return v0

    .line 1667
    .end local v2    # "that":Landroid/media/AudioFormat;
    :cond_4e
    :goto_4e
    return v1
.end method

.method public whitelist getChannelCount()I
    .registers 2

    .line 1394
    iget v0, p0, Landroid/media/AudioFormat;->mChannelCount:I

    return v0
.end method

.method public whitelist getChannelIndexMask()I
    .registers 2

    .line 1385
    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return v0
.end method

.method public whitelist getChannelMask()I
    .registers 2

    .line 1373
    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return v0
.end method

.method public whitelist getEncoding()I
    .registers 2

    .line 1352
    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return v0
.end method

.method public whitelist getFrameSizeInBytes()I
    .registers 2

    .line 1413
    iget v0, p0, Landroid/media/AudioFormat;->mFrameSizeInBytes:I

    return v0
.end method

.method public greylist-max-o getPropertySetMask()I
    .registers 2

    .line 1418
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method public whitelist getSampleRate()I
    .registers 2

    .line 1361
    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 1686
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    .line 1687
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 1686
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o toLogFriendlyString()Ljava/lang/String;
    .registers 4

    .line 1423
    iget v0, p0, Landroid/media/AudioFormat;->mChannelCount:I

    .line 1424
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-static {v2}, Landroid/media/AudioFormat;->toLogFriendlyEncoding(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 1423
    const-string v1, "%dch %dHz %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1726
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioFormat: props="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chan=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mChannelMask:I

    .line 1729
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " chan_index=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    .line 1730
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1726
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1697
    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1698
    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1699
    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1700
    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1701
    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1702
    return-void
.end method
