.class public final Landroid/media/internal/exo/Format$Builder;
.super Ljava/lang/Object;
.source "Format.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/Format;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist accessibilityChannel:I

.field private blacklist averageBitrate:I

.field private blacklist channelCount:I

.field private blacklist codecs:Ljava/lang/String;

.field private blacklist colorInfo:Landroid/media/internal/exo/video/ColorInfo;

.field private blacklist containerMimeType:Ljava/lang/String;

.field private blacklist cryptoType:I

.field private blacklist drmInitData:Landroid/media/internal/exo/drm/DrmInitData;

.field private blacklist encoderDelay:I

.field private blacklist encoderPadding:I

.field private blacklist frameRate:F

.field private blacklist height:I

.field private blacklist id:Ljava/lang/String;

.field private blacklist initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private blacklist label:Ljava/lang/String;

.field private blacklist language:Ljava/lang/String;

.field private blacklist maxInputSize:I

.field private blacklist metadata:Landroid/media/internal/exo/metadata/Metadata;

.field private blacklist pcmEncoding:I

.field private blacklist peakBitrate:I

.field private blacklist pixelWidthHeightRatio:F

.field private blacklist projectionData:[B

.field private blacklist roleFlags:I

.field private blacklist rotationDegrees:I

.field private blacklist sampleMimeType:Ljava/lang/String;

.field private blacklist sampleRate:I

.field private blacklist selectionFlags:I

.field private blacklist stereoMode:I

.field private blacklist subsampleOffsetUs:J

.field private blacklist width:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 179
    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->averageBitrate:I

    .line 180
    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->peakBitrate:I

    .line 182
    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->maxInputSize:I

    const-wide v1, 0x7fffffffffffffffL

    .line 183
    iput-wide v1, p0, Landroid/media/internal/exo/Format$Builder;->subsampleOffsetUs:J

    .line 185
    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->width:I

    .line 186
    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->height:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 187
    iput v1, p0, Landroid/media/internal/exo/Format$Builder;->frameRate:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 188
    iput v1, p0, Landroid/media/internal/exo/Format$Builder;->pixelWidthHeightRatio:F

    .line 189
    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->stereoMode:I

    .line 191
    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->channelCount:I

    .line 192
    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->sampleRate:I

    .line 193
    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->pcmEncoding:I

    .line 195
    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->accessibilityChannel:I

    const/4 v0, 0x0

    .line 197
    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->cryptoType:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/internal/exo/Format;)V
    .registers 4

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iget-object v0, p1, Landroid/media/internal/exo/Format;->id:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/Format$Builder;->id:Ljava/lang/String;

    .line 207
    iget-object v0, p1, Landroid/media/internal/exo/Format;->label:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/Format$Builder;->label:Ljava/lang/String;

    .line 208
    iget-object v0, p1, Landroid/media/internal/exo/Format;->language:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/Format$Builder;->language:Ljava/lang/String;

    .line 209
    iget v0, p1, Landroid/media/internal/exo/Format;->selectionFlags:I

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->selectionFlags:I

    .line 210
    iget v0, p1, Landroid/media/internal/exo/Format;->roleFlags:I

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->roleFlags:I

    .line 211
    iget v0, p1, Landroid/media/internal/exo/Format;->averageBitrate:I

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->averageBitrate:I

    .line 212
    iget v0, p1, Landroid/media/internal/exo/Format;->peakBitrate:I

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->peakBitrate:I

    .line 213
    iget-object v0, p1, Landroid/media/internal/exo/Format;->codecs:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/Format$Builder;->codecs:Ljava/lang/String;

    .line 214
    iget-object v0, p1, Landroid/media/internal/exo/Format;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    iput-object v0, p0, Landroid/media/internal/exo/Format$Builder;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    .line 216
    iget-object v0, p1, Landroid/media/internal/exo/Format;->containerMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/Format$Builder;->containerMimeType:Ljava/lang/String;

    .line 218
    iget-object v0, p1, Landroid/media/internal/exo/Format;->sampleMimeType:Ljava/lang/String;

    iput-object v0, p0, Landroid/media/internal/exo/Format$Builder;->sampleMimeType:Ljava/lang/String;

    .line 219
    iget v0, p1, Landroid/media/internal/exo/Format;->maxInputSize:I

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->maxInputSize:I

    .line 220
    iget-object v0, p1, Landroid/media/internal/exo/Format;->initializationData:Ljava/util/List;

    iput-object v0, p0, Landroid/media/internal/exo/Format$Builder;->initializationData:Ljava/util/List;

    .line 221
    iget-object v0, p1, Landroid/media/internal/exo/Format;->drmInitData:Landroid/media/internal/exo/drm/DrmInitData;

    iput-object v0, p0, Landroid/media/internal/exo/Format$Builder;->drmInitData:Landroid/media/internal/exo/drm/DrmInitData;

    .line 222
    iget-wide v0, p1, Landroid/media/internal/exo/Format;->subsampleOffsetUs:J

    iput-wide v0, p0, Landroid/media/internal/exo/Format$Builder;->subsampleOffsetUs:J

    .line 224
    iget v0, p1, Landroid/media/internal/exo/Format;->width:I

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->width:I

    .line 225
    iget v0, p1, Landroid/media/internal/exo/Format;->height:I

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->height:I

    .line 226
    iget v0, p1, Landroid/media/internal/exo/Format;->frameRate:F

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->frameRate:F

    .line 227
    iget v0, p1, Landroid/media/internal/exo/Format;->rotationDegrees:I

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->rotationDegrees:I

    .line 228
    iget v0, p1, Landroid/media/internal/exo/Format;->pixelWidthHeightRatio:F

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->pixelWidthHeightRatio:F

    .line 229
    iget-object v0, p1, Landroid/media/internal/exo/Format;->projectionData:[B

    iput-object v0, p0, Landroid/media/internal/exo/Format$Builder;->projectionData:[B

    .line 230
    iget v0, p1, Landroid/media/internal/exo/Format;->stereoMode:I

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->stereoMode:I

    .line 231
    iget-object v0, p1, Landroid/media/internal/exo/Format;->colorInfo:Landroid/media/internal/exo/video/ColorInfo;

    iput-object v0, p0, Landroid/media/internal/exo/Format$Builder;->colorInfo:Landroid/media/internal/exo/video/ColorInfo;

    .line 233
    iget v0, p1, Landroid/media/internal/exo/Format;->channelCount:I

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->channelCount:I

    .line 234
    iget v0, p1, Landroid/media/internal/exo/Format;->sampleRate:I

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->sampleRate:I

    .line 235
    iget v0, p1, Landroid/media/internal/exo/Format;->pcmEncoding:I

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->pcmEncoding:I

    .line 236
    iget v0, p1, Landroid/media/internal/exo/Format;->encoderDelay:I

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->encoderDelay:I

    .line 237
    iget v0, p1, Landroid/media/internal/exo/Format;->encoderPadding:I

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->encoderPadding:I

    .line 239
    iget v0, p1, Landroid/media/internal/exo/Format;->accessibilityChannel:I

    iput v0, p0, Landroid/media/internal/exo/Format$Builder;->accessibilityChannel:I

    .line 241
    iget p1, p1, Landroid/media/internal/exo/Format;->cryptoType:I

    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->cryptoType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/internal/exo/Format;Landroid/media/internal/exo/Format$1;)V
    .registers 3

    .line 126
    invoke-direct {p0, p1}, Landroid/media/internal/exo/Format$Builder;-><init>(Landroid/media/internal/exo/Format;)V

    return-void
.end method

.method static synthetic blacklist access$100(Landroid/media/internal/exo/Format$Builder;)Ljava/lang/String;
    .registers 1

    .line 126
    iget-object p0, p0, Landroid/media/internal/exo/Format$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$1000(Landroid/media/internal/exo/Format$Builder;)Ljava/lang/String;
    .registers 1

    .line 126
    iget-object p0, p0, Landroid/media/internal/exo/Format$Builder;->containerMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$1100(Landroid/media/internal/exo/Format$Builder;)Ljava/lang/String;
    .registers 1

    .line 126
    iget-object p0, p0, Landroid/media/internal/exo/Format$Builder;->sampleMimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$1200(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->maxInputSize:I

    return p0
.end method

.method static synthetic blacklist access$1300(Landroid/media/internal/exo/Format$Builder;)Ljava/util/List;
    .registers 1

    .line 126
    iget-object p0, p0, Landroid/media/internal/exo/Format$Builder;->initializationData:Ljava/util/List;

    return-object p0
.end method

.method static synthetic blacklist access$1400(Landroid/media/internal/exo/Format$Builder;)Landroid/media/internal/exo/drm/DrmInitData;
    .registers 1

    .line 126
    iget-object p0, p0, Landroid/media/internal/exo/Format$Builder;->drmInitData:Landroid/media/internal/exo/drm/DrmInitData;

    return-object p0
.end method

.method static synthetic blacklist access$1500(Landroid/media/internal/exo/Format$Builder;)J
    .registers 3

    .line 126
    iget-wide v0, p0, Landroid/media/internal/exo/Format$Builder;->subsampleOffsetUs:J

    return-wide v0
.end method

.method static synthetic blacklist access$1600(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->width:I

    return p0
.end method

.method static synthetic blacklist access$1700(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->height:I

    return p0
.end method

.method static synthetic blacklist access$1800(Landroid/media/internal/exo/Format$Builder;)F
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->frameRate:F

    return p0
.end method

.method static synthetic blacklist access$1900(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->rotationDegrees:I

    return p0
.end method

.method static synthetic blacklist access$200(Landroid/media/internal/exo/Format$Builder;)Ljava/lang/String;
    .registers 1

    .line 126
    iget-object p0, p0, Landroid/media/internal/exo/Format$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$2000(Landroid/media/internal/exo/Format$Builder;)F
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->pixelWidthHeightRatio:F

    return p0
.end method

.method static synthetic blacklist access$2100(Landroid/media/internal/exo/Format$Builder;)[B
    .registers 1

    .line 126
    iget-object p0, p0, Landroid/media/internal/exo/Format$Builder;->projectionData:[B

    return-object p0
.end method

.method static synthetic blacklist access$2200(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->stereoMode:I

    return p0
.end method

.method static synthetic blacklist access$2300(Landroid/media/internal/exo/Format$Builder;)Landroid/media/internal/exo/video/ColorInfo;
    .registers 1

    .line 126
    iget-object p0, p0, Landroid/media/internal/exo/Format$Builder;->colorInfo:Landroid/media/internal/exo/video/ColorInfo;

    return-object p0
.end method

.method static synthetic blacklist access$2400(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->channelCount:I

    return p0
.end method

.method static synthetic blacklist access$2500(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->sampleRate:I

    return p0
.end method

.method static synthetic blacklist access$2600(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->pcmEncoding:I

    return p0
.end method

.method static synthetic blacklist access$2700(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->encoderDelay:I

    return p0
.end method

.method static synthetic blacklist access$2800(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->encoderPadding:I

    return p0
.end method

.method static synthetic blacklist access$2900(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->accessibilityChannel:I

    return p0
.end method

.method static synthetic blacklist access$300(Landroid/media/internal/exo/Format$Builder;)Ljava/lang/String;
    .registers 1

    .line 126
    iget-object p0, p0, Landroid/media/internal/exo/Format$Builder;->language:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$3000(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->cryptoType:I

    return p0
.end method

.method static synthetic blacklist access$400(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->selectionFlags:I

    return p0
.end method

.method static synthetic blacklist access$500(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->roleFlags:I

    return p0
.end method

.method static synthetic blacklist access$600(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->averageBitrate:I

    return p0
.end method

.method static synthetic blacklist access$700(Landroid/media/internal/exo/Format$Builder;)I
    .registers 1

    .line 126
    iget p0, p0, Landroid/media/internal/exo/Format$Builder;->peakBitrate:I

    return p0
.end method

.method static synthetic blacklist access$800(Landroid/media/internal/exo/Format$Builder;)Ljava/lang/String;
    .registers 1

    .line 126
    iget-object p0, p0, Landroid/media/internal/exo/Format$Builder;->codecs:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic blacklist access$900(Landroid/media/internal/exo/Format$Builder;)Landroid/media/internal/exo/metadata/Metadata;
    .registers 1

    .line 126
    iget-object p0, p0, Landroid/media/internal/exo/Format$Builder;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    return-object p0
.end method


# virtual methods
.method public blacklist build()Landroid/media/internal/exo/Format;
    .registers 3

    .line 601
    new-instance v0, Landroid/media/internal/exo/Format;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/internal/exo/Format;-><init>(Landroid/media/internal/exo/Format$Builder;Landroid/media/internal/exo/Format$1;)V

    return-object v0
.end method

.method public blacklist setAccessibilityChannel(I)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 581
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->accessibilityChannel:I

    return-object p0
.end method

.method public blacklist setAverageBitrate(I)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 318
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->averageBitrate:I

    return-object p0
.end method

.method public blacklist setChannelCount(I)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 524
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->channelCount:I

    return-object p0
.end method

.method public blacklist setCodecs(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 340
    iput-object p1, p0, Landroid/media/internal/exo/Format$Builder;->codecs:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setColorInfo(Landroid/media/internal/exo/video/ColorInfo;)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 511
    iput-object p1, p0, Landroid/media/internal/exo/Format$Builder;->colorInfo:Landroid/media/internal/exo/video/ColorInfo;

    return-object p0
.end method

.method public blacklist setDrmInitData(Landroid/media/internal/exo/drm/DrmInitData;)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 410
    iput-object p1, p0, Landroid/media/internal/exo/Format$Builder;->drmInitData:Landroid/media/internal/exo/drm/DrmInitData;

    return-object p0
.end method

.method public blacklist setEncoderDelay(I)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 557
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->encoderDelay:I

    return-object p0
.end method

.method public blacklist setEncoderPadding(I)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 568
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->encoderPadding:I

    return-object p0
.end method

.method public blacklist setFrameRate(F)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 456
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->frameRate:F

    return-object p0
.end method

.method public blacklist setHeight(I)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 445
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->height:I

    return-object p0
.end method

.method public blacklist setId(I)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 263
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/exo/Format$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setId(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 251
    iput-object p1, p0, Landroid/media/internal/exo/Format$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setInitializationData(Ljava/util/List;)Landroid/media/internal/exo/Format$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Landroid/media/internal/exo/Format$Builder;"
        }
    .end annotation

    .line 399
    iput-object p1, p0, Landroid/media/internal/exo/Format$Builder;->initializationData:Ljava/util/List;

    return-object p0
.end method

.method public blacklist setLabel(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 274
    iput-object p1, p0, Landroid/media/internal/exo/Format$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setLanguage(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 285
    iput-object p1, p0, Landroid/media/internal/exo/Format$Builder;->language:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setMaxInputSize(I)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 388
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->maxInputSize:I

    return-object p0
.end method

.method public blacklist setMetadata(Landroid/media/internal/exo/metadata/Metadata;)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 351
    iput-object p1, p0, Landroid/media/internal/exo/Format$Builder;->metadata:Landroid/media/internal/exo/metadata/Metadata;

    return-object p0
.end method

.method public blacklist setPcmEncoding(I)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 546
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->pcmEncoding:I

    return-object p0
.end method

.method public blacklist setPeakBitrate(I)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 329
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->peakBitrate:I

    return-object p0
.end method

.method public blacklist setPixelWidthHeightRatio(F)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 478
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->pixelWidthHeightRatio:F

    return-object p0
.end method

.method public blacklist setProjectionData([B)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 489
    iput-object p1, p0, Landroid/media/internal/exo/Format$Builder;->projectionData:[B

    return-object p0
.end method

.method public blacklist setRotationDegrees(I)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 467
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->rotationDegrees:I

    return-object p0
.end method

.method public blacklist setSampleMimeType(Ljava/lang/String;)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 377
    iput-object p1, p0, Landroid/media/internal/exo/Format$Builder;->sampleMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSampleRate(I)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 535
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->sampleRate:I

    return-object p0
.end method

.method public blacklist setSelectionFlags(I)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 296
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->selectionFlags:I

    return-object p0
.end method

.method public blacklist setStereoMode(I)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 500
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->stereoMode:I

    return-object p0
.end method

.method public blacklist setSubsampleOffsetUs(J)Landroid/media/internal/exo/Format$Builder;
    .registers 3

    .line 421
    iput-wide p1, p0, Landroid/media/internal/exo/Format$Builder;->subsampleOffsetUs:J

    return-object p0
.end method

.method public blacklist setWidth(I)Landroid/media/internal/exo/Format$Builder;
    .registers 2

    .line 434
    iput p1, p0, Landroid/media/internal/exo/Format$Builder;->width:I

    return-object p0
.end method
